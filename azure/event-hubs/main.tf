/**
 * Microsoft Azure — event-hubs
 *
 * Provisions Event Hubs via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "event-hubs"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
