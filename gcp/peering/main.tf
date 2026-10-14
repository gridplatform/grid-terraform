/**
 * Network controls (Unit B): VPC peering for an existing fabric network.
 */

resource "google_compute_network_peering" "peering" {
  for_each = { for i, p in var.peerings : "${p.name}-${i}" => p }

  name                                = each.value.name
  network                             = var.network
  peer_network                        = each.value.peer_network
  export_custom_routes                = try(each.value.export_custom_routes, false)
  import_custom_routes                = try(each.value.import_custom_routes, false)
  export_subnet_routes_with_public_ip = try(each.value.export_subnet_routes_with_public_ip, false)
  import_subnet_routes_with_public_ip = try(each.value.import_subnet_routes_with_public_ip, false)
}
