/**
 * Standalone module: Cloud DNS managed zone + record sets.
 * Only google_dns_* resources — no module calls.
 */

resource "google_dns_managed_zone" "this" {
  project     = var.project_id
  name        = var.name
  dns_name    = var.domain
  description = var.description
  labels      = var.labels

  visibility = var.type == "private" ? "private" : "public"

  dynamic "private_visibility_config" {
    for_each = var.type == "private" ? [1] : []
    content {
      dynamic "networks" {
        for_each = var.private_visibility_config_networks
        content {
          network_url = networks.value
        }
      }
    }
  }

  force_destroy = var.force_destroy
}

resource "google_dns_record_set" "records" {
  for_each = {
    for idx, rs in var.recordsets : "${rs.name}-${rs.type}-${idx}" => rs
  }

  project      = var.project_id
  managed_zone = google_dns_managed_zone.this.name
  name         = each.value.name == "" ? google_dns_managed_zone.this.dns_name : "${each.value.name}.${google_dns_managed_zone.this.dns_name}"
  type         = each.value.type
  ttl          = each.value.ttl
  rrdatas      = each.value.records
}

locals {
  zone_resource = google_dns_managed_zone.this
}
