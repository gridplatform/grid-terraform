/**
 * Microsoft Azure — service-fabric
 *
 * Provisions Service Fabric via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "service-fabric"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
