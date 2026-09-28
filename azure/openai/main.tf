/**
 * Azure OpenAI (Foundry) — cognitive account kind OpenAI + optional model deployments.
 */

resource "azurerm_cognitive_account" "this" {
  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  kind                  = "OpenAI"
  sku_name              = var.sku_name
  custom_subdomain_name = coalesce(var.custom_subdomain_name, var.name)
  tags                  = var.tags

  public_network_access_enabled = var.public_network_access_enabled
}

resource "azurerm_cognitive_deployment" "this" {
  for_each = { for d in var.deployments : d.name => d }

  name                 = each.value.name
  cognitive_account_id = azurerm_cognitive_account.this.id

  model {
    format  = try(each.value.format, "OpenAI")
    name    = each.value.model_name
    version = each.value.model_version
  }

  sku {
    name     = try(each.value.sku_name, "Standard")
    capacity = try(each.value.capacity, 1)
  }
}
