/**
 * Microsoft Azure — service-plan
 *
 * Provisions Service Plan via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "service-plan"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
