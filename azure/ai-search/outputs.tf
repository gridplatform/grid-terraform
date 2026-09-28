output "id" {
  value = azurerm_search_service.this.id
}

output "primary_key" {
  value     = azurerm_search_service.this.primary_key
  sensitive = true
}

output "query_keys" {
  value     = azurerm_search_service.this.query_keys
  sensitive = true
}
