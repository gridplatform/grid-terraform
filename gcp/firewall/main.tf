/**
 * Network controls (Unit B): VPC firewall rules for an existing fabric network.
 */

resource "google_compute_firewall" "ingress" {
  for_each = { for i, r in var.ingress_rules : "${r.name}-${i}" => r }

  project     = var.project_id
  name        = each.value.name
  network     = var.network
  direction   = "INGRESS"
  priority    = try(each.value.priority, 1000)
  description = try(each.value.description, null)

  source_ranges           = try(each.value.source_ranges, [])
  source_tags             = try(each.value.source_tags, null)
  source_service_accounts = try(each.value.source_service_accounts, null)
  target_tags             = try(each.value.target_tags, null)
  target_service_accounts = try(each.value.target_service_accounts, null)
  disabled                = try(each.value.disabled, false)

  dynamic "log_config" {
    for_each = try(each.value.log_config, null) != null ? [each.value.log_config] : []
    content {
      metadata = log_config.value.metadata
      filter   = try(log_config.value.filter, null)
    }
  }

  dynamic "allow" {
    for_each = try(each.value.allow, [])
    content {
      protocol = allow.value.protocol
      ports    = try(allow.value.ports, null)
    }
  }
  dynamic "deny" {
    for_each = try(each.value.deny, [])
    content {
      protocol = deny.value.protocol
      ports    = try(deny.value.ports, null)
    }
  }
}

resource "google_compute_firewall" "egress" {
  for_each = { for i, r in var.egress_rules : "${r.name}-${i}" => r }

  project     = var.project_id
  name        = each.value.name
  network     = var.network
  direction   = "EGRESS"
  priority    = try(each.value.priority, 1000)
  description = try(each.value.description, null)

  destination_ranges      = try(each.value.destination_ranges, [])
  target_tags             = try(each.value.target_tags, null)
  target_service_accounts = try(each.value.target_service_accounts, null)
  disabled                = try(each.value.disabled, false)

  dynamic "log_config" {
    for_each = try(each.value.log_config, null) != null ? [each.value.log_config] : []
    content {
      metadata = log_config.value.metadata
      filter   = try(log_config.value.filter, null)
    }
  }

  dynamic "allow" {
    for_each = try(each.value.allow, [])
    content {
      protocol = allow.value.protocol
      ports    = try(allow.value.ports, null)
    }
  }
  dynamic "deny" {
    for_each = try(each.value.deny, [])
    content {
      protocol = deny.value.protocol
      ports    = try(deny.value.ports, null)
    }
  }
}
