/**
 * Azure Private DNS Resolver — inbound/outbound endpoints for hybrid DNS.
 */

resource "azurerm_private_dns_resolver" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  virtual_network_id  = var.virtual_network_id
  tags                = var.tags
}

resource "azurerm_private_dns_resolver_inbound_endpoint" "this" {
  for_each = {
    for e in var.inbound_endpoints : coalesce(e.name_key, e.name) => e
  }

  name                    = each.value.name
  private_dns_resolver_id = azurerm_private_dns_resolver.this.id
  location                = var.location
  tags                    = var.tags

  ip_configurations {
    private_ip_allocation_method = each.value.private_ip_allocation_method
    subnet_id                    = each.value.subnet_id
    private_ip_address           = each.value.private_ip_address
  }
}

resource "azurerm_private_dns_resolver_outbound_endpoint" "this" {
  for_each = {
    for e in var.outbound_endpoints : coalesce(e.name_key, e.name) => e
  }

  name                    = each.value.name
  private_dns_resolver_id = azurerm_private_dns_resolver.this.id
  location                = var.location
  subnet_id               = each.value.subnet_id
  tags                    = var.tags
}

resource "azurerm_private_dns_resolver_dns_forwarding_ruleset" "this" {
  count = length(var.forwarding_rules) > 0 || length(var.outbound_endpoints) > 0 ? 1 : 0

  name                                       = coalesce(var.forwarding_ruleset_name, "${var.name}-ruleset")
  resource_group_name                        = var.resource_group_name
  location                                   = var.location
  private_dns_resolver_outbound_endpoint_ids = [for e in azurerm_private_dns_resolver_outbound_endpoint.this : e.id]
  tags                                       = var.tags
}

resource "azurerm_private_dns_resolver_forwarding_rule" "this" {
  for_each = {
    for r in var.forwarding_rules : coalesce(r.name_key, r.name) => r
  }

  name                      = each.value.name
  dns_forwarding_ruleset_id = azurerm_private_dns_resolver_dns_forwarding_ruleset.this[0].id
  domain_name               = each.value.domain_name
  enabled                   = each.value.enabled

  dynamic "target_dns_servers" {
    for_each = each.value.target_dns_servers
    content {
      ip_address = target_dns_servers.value.ip_address
      port       = target_dns_servers.value.port
    }
  }
}

resource "azurerm_private_dns_resolver_virtual_network_link" "ruleset" {
  for_each = {
    for l in var.ruleset_vnet_links : coalesce(l.name_key, l.name) => l
    if length(var.forwarding_rules) > 0 || length(var.outbound_endpoints) > 0
  }

  name                      = each.value.name
  dns_forwarding_ruleset_id = azurerm_private_dns_resolver_dns_forwarding_ruleset.this[0].id
  virtual_network_id        = each.value.virtual_network_id
}
