output "id" {
  value = azurerm_cognitive_account.this.id
}

output "endpoint" {
  value = azurerm_cognitive_account.this.endpoint
}

output "primary_access_key" {
  value     = azurerm_cognitive_account.this.primary_access_key
  sensitive = true
}

output "deployment_ids" {
  value = { for k, v in azurerm_cognitive_deployment.this : k => v.id }
}
