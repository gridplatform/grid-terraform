/**
 * Azure AI Search (Cognitive Search) service.
 */

resource "azurerm_search_service" "this" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sku                           = var.sku
  replica_count                 = var.replica_count
  partition_count               = var.partition_count
  semantic_search_sku           = var.semantic_search_sku
  local_authentication_enabled  = var.local_authentication_enabled
  public_network_access_enabled = var.public_network_access_enabled
  tags                          = var.tags
}
