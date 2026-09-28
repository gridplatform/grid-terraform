output "zone_id" {
  description = "Public DNS zone ID"
  value       = azurerm_dns_zone.this.id
}

output "zone_name" {
  description = "Public DNS zone name"
  value       = azurerm_dns_zone.this.name
}

output "name_servers" {
  description = "Azure-assigned name servers"
  value       = azurerm_dns_zone.this.name_servers
}

output "number_of_record_sets" {
  value = azurerm_dns_zone.this.number_of_record_sets
}
