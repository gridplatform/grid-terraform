output "app_insights_id" {
  description = "Application Insights resource ID"
  value       = azurerm_application_insights.this.id
}

output "instrumentation_key" {
  description = "Instrumentation key"
  value       = azurerm_application_insights.this.instrumentation_key
  sensitive   = true
}

output "connection_string" {
  description = "Connection string for SDK configuration"
  value       = azurerm_application_insights.this.connection_string
  sensitive   = true
}

output "module" {
  description = "Module identifier"
  value       = "azure/application-insights"
}
