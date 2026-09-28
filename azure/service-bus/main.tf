/**
 * Microsoft Azure — service-bus
 *
 * Provisions Service Bus via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "service-bus"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
