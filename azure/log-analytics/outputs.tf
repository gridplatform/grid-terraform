output "workspace_id" {
  description = "Log Analytics workspace resource ID"
  value       = azurerm_log_analytics_workspace.this.id
}

output "primary_shared_key" {
  description = "Primary shared key for the workspace"
  value       = azurerm_log_analytics_workspace.this.primary_shared_key
  sensitive   = true
}

output "module" {
  description = "Module identifier"
  value       = "azure/log-analytics"
}
