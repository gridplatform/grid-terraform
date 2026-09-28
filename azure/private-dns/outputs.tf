output "zone_id" {
  description = "Private DNS zone ID"
  value       = azurerm_private_dns_zone.this.id
}

output "zone_name" {
  description = "Private DNS zone name"
  value       = azurerm_private_dns_zone.this.name
}

output "vnet_link_ids" {
  description = "VNet link resource IDs"
  value       = { for k, v in azurerm_private_dns_zone_virtual_network_link.this : k => v.id }
}
