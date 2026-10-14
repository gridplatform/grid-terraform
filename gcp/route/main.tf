/**
 * Network controls (Unit B): custom VPC routes for an existing fabric network.
 */

resource "google_compute_route" "routes" {
  for_each = { for i, r in var.routes : "${r.name}-${i}" => r }

  project              = var.project_id
  name                 = each.value.name
  network              = var.network
  dest_range           = each.value.dest_range
  next_hop_gateway     = try(each.value.next_hop_gateway, null)
  next_hop_ip          = try(each.value.next_hop_ip, null)
  next_hop_instance    = try(each.value.next_hop_instance, null)
  next_hop_vpc_peering = try(each.value.next_hop_vpc_peering, null)
  next_hop_ilb         = try(each.value.next_hop_ilb, null)
  priority             = try(each.value.priority, 1000)
}
