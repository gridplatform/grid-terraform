/**
 * Microsoft Azure — vpn-gateway
 *
 * Provisions Vpn Gateway via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "vpn-gateway"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
