output "connector_id" {
  description = "VPC Access connector ID"
  value       = google_vpc_access_connector.this.id
}

output "connector_name" {
  description = "Connector name"
  value       = google_vpc_access_connector.this.name
}

output "connector_self_link" {
  description = "Connector self_link / id for Cloud Run vpc_access.connector"
  value       = google_vpc_access_connector.this.id
}
