/**
 * Microsoft Azure — nat-gateway
 *
 * Provisions Nat Gateway via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "nat-gateway"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
