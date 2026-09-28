/**
 * Microsoft Azure — vnet-peering
 *
 * Provisions Vnet Peering via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "vnet-peering"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
