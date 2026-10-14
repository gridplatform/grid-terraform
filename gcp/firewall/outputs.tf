output "ingress_names" {
  description = "Ingress firewall rule names"
  value       = [for r in google_compute_firewall.ingress : r.name]
}

output "egress_names" {
  description = "Egress firewall rule names"
  value       = [for r in google_compute_firewall.egress : r.name]
}
