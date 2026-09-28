output "action_group_id" {
  description = "Action group resource ID"
  value       = azurerm_monitor_action_group.this.id
}

output "metric_alert_id" {
  description = "Metric alert resource ID (null when create_metric_alert is false)"
  value       = var.create_metric_alert ? azurerm_monitor_metric_alert.this[0].id : null
}

output "module" {
  description = "Module identifier"
  value       = "azure/monitor"
}
