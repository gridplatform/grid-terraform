/**
 * Azure AI Services / Foundry Tools cognitive account (Speech, Vision, Language, etc.).
 * Set kind to the service (e.g. SpeechServices, ComputerVision, TextAnalytics, FormRecognizer).
 */

resource "azurerm_cognitive_account" "this" {
  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  kind                  = var.kind
  sku_name              = var.sku_name
  custom_subdomain_name = coalesce(var.custom_subdomain_name, var.name)
  tags                  = var.tags

  public_network_access_enabled = var.public_network_access_enabled
}
