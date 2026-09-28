output "notification_channel_id" {
  description = "Notification channel ID (null when not created)"
  value       = var.create_notification_channel ? google_monitoring_notification_channel.this[0].id : null
}

output "uptime_check_id" {
  description = "Uptime check ID (null when not created)"
  value       = var.create_uptime_check ? google_monitoring_uptime_check_config.this[0].id : null
}

output "module" {
  description = "Module identifier"
  value       = "gcp/monitoring"
}
