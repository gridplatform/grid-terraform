output "alert_policy_id" {
  description = "Alert policy ID"
  value       = google_monitoring_alert_policy.this.id
}

output "alert_policy_name" {
  description = "Alert policy name"
  value       = google_monitoring_alert_policy.this.name
}
