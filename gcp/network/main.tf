/**
 * Network fabric (Unit A): VPC + subnets (+ optional Private Service Access).
 * Controls (firewall, peering, custom routes) live in separate modules under gcp/.
 */

resource "google_compute_network" "vpc" {
  project                 = var.project_id
  name                    = var.network_name
  description             = var.description
  routing_mode            = var.routing_mode
  auto_create_subnetworks = var.auto_create_subnetworks
  mtu                     = var.mtu > 0 ? var.mtu : null
}

resource "google_compute_subnetwork" "subnets" {
  for_each = { for i, s in var.subnets : s.subnet_name => s }

  project                  = var.project_id
  name                     = each.value.subnet_name
  ip_cidr_range            = each.value.subnet_ip
  region                   = each.value.subnet_region
  network                  = google_compute_network.vpc.id
  description              = try(each.value.description, null)
  private_ip_google_access = try(each.value.subnet_private_access, false) ? true : null

  dynamic "secondary_ip_range" {
    for_each = try(var.secondary_ranges[each.value.subnet_name], [])
    content {
      range_name    = secondary_ip_range.value.range_name
      ip_cidr_range = secondary_ip_range.value.ip_cidr_range
    }
  }

  dynamic "log_config" {
    for_each = try(var.subnet_flow_logs[each.value.subnet_name], null) != null ? [var.subnet_flow_logs[each.value.subnet_name]] : []
    content {
      aggregation_interval = try(log_config.value.aggregation_interval, "INTERVAL_5_SEC")
      flow_sampling        = try(log_config.value.flow_sampling, 0.5)
      metadata             = try(log_config.value.metadata, "INCLUDE_ALL_METADATA")
    }
  }
}

# Private Service Access (optional): reserved range + peering for Cloud SQL private IP, etc.
resource "google_compute_global_address" "private_service_access_range" {
  count = var.enable_private_service_access ? 1 : 0

  provider      = google-beta
  project       = var.project_id
  name          = "google-managed-services-${var.network_name}"
  description   = var.private_service_access_description
  purpose       = "VPC_PEERING"
  address       = var.private_service_access_address != "" ? var.private_service_access_address : null
  prefix_length = var.private_service_access_prefix_length
  address_type  = "INTERNAL"
  network       = google_compute_network.vpc.self_link
  labels        = var.private_service_access_labels
}

resource "google_service_networking_connection" "private_service_access" {
  count = var.enable_private_service_access ? 1 : 0

  provider                = google-beta
  network                 = google_compute_network.vpc.self_link
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_service_access_range[0].name]
}
