output "resolver_id" {
  value = azurerm_private_dns_resolver.this.id
}

output "inbound_endpoint_ids" {
  value = { for k, v in azurerm_private_dns_resolver_inbound_endpoint.this : k => v.id }
}

output "outbound_endpoint_ids" {
  value = { for k, v in azurerm_private_dns_resolver_outbound_endpoint.this : k => v.id }
}

output "forwarding_ruleset_id" {
  value = try(azurerm_private_dns_resolver_dns_forwarding_ruleset.this[0].id, null)
}
