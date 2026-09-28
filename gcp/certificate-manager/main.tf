/**
 * Certificate Manager — DNS authorization, managed cert, certificate map.
 * Optional global external IP for Gateway / HTTP(S) LB attachment.
 * One product family: Certificate Manager (+ optional compute global address).
 */

locals {
  labels = merge(
    var.labels,
    { linked_cm_certificate = replace(var.certificate_name, ".", "-") }
  )
  cert_map_description = var.cert_map_description != "" ? var.cert_map_description : "TLS map for ${var.domain}"
}

resource "google_compute_global_address" "this" {
  count = var.create_global_address ? 1 : 0

  project      = var.project_id
  name         = var.global_address_name
  address_type = "EXTERNAL"
  ip_version   = "IPV4"
  labels       = local.labels
}

resource "google_certificate_manager_dns_authorization" "this" {
  project = var.project_id
  name    = var.dns_authorization_name
  domain  = var.domain
  labels  = local.labels
}

resource "google_certificate_manager_certificate" "this" {
  project = var.project_id
  name    = var.certificate_name
  scope   = var.certificate_scope
  labels  = local.labels

  managed {
    domains = concat(
      ["*.${var.domain}", var.domain],
      var.extra_domains
    )
    dns_authorizations = [
      google_certificate_manager_dns_authorization.this.id,
    ]
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "google_certificate_manager_certificate_map" "this" {
  project     = var.project_id
  name        = var.cert_map_name
  description = local.cert_map_description
  labels      = local.labels
}

resource "google_certificate_manager_certificate_map_entry" "wildcard" {
  project      = var.project_id
  name         = var.map_wildcard_entry_name
  map          = google_certificate_manager_certificate_map.this.name
  certificates = [google_certificate_manager_certificate.this.id]
  hostname     = "*.${var.domain}"
}

resource "google_certificate_manager_certificate_map_entry" "primary" {
  project      = var.project_id
  name         = var.map_primary_entry_name
  map          = google_certificate_manager_certificate_map.this.name
  certificates = [google_certificate_manager_certificate.this.id]
  matcher      = "PRIMARY"
}
