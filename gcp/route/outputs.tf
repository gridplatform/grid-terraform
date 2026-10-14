output "route_names" {
  description = "Created route names"
  value       = [for r in google_compute_route.routes : r.name]
}
