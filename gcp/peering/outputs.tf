output "peering_names" {
  description = "Created VPC peering names"
  value       = [for p in google_compute_network_peering.peering : p.name]
}
