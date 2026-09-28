output "instance_name" {
  description = "Cloud SQL instance name"
  value       = google_sql_database_instance.this.name
}

output "connection_name" {
  description = "Connection name (project:region:instance)"
  value       = google_sql_database_instance.this.connection_name
}

output "private_ip_address" {
  description = "Private IP (null if none)"
  value = one([
    for ip in google_sql_database_instance.this.ip_address : ip.ip_address if ip.type == "PRIVATE"
  ])
}

output "public_ip_address" {
  description = "Public IP (null if none)"
  value = one([
    for ip in google_sql_database_instance.this.ip_address : ip.ip_address if ip.type == "PRIMARY"
  ])
}

output "self_link" {
  description = "Instance self_link"
  value       = google_sql_database_instance.this.self_link
}

output "psc_service_attachment_link" {
  description = "PSC service attachment URI when PSC is enabled"
  value       = google_sql_database_instance.this.psc_service_attachment_link
}
