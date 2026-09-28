output "certificate_id" {
  description = "Managed certificate ID"
  value       = google_certificate_manager_certificate.this.id
}

output "certificate_map_id" {
  description = "Certificate map ID"
  value       = google_certificate_manager_certificate_map.this.id
}

output "certificate_map_name" {
  description = "Certificate map name"
  value       = google_certificate_manager_certificate_map.this.name
}

output "dns_authorization_id" {
  description = "DNS authorization ID"
  value       = google_certificate_manager_dns_authorization.this.id
}

output "dns_resource_record" {
  description = "DNS TXT record to prove domain ownership"
  value       = google_certificate_manager_dns_authorization.this.dns_resource_record
}

output "global_address" {
  description = "Global external IP (null if not created)"
  value       = try(google_compute_global_address.this[0].address, null)
}

output "global_address_name" {
  description = "Global address resource name (null if not created)"
  value       = try(google_compute_global_address.this[0].name, null)
}
