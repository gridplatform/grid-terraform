/**
 * Microsoft Azure — application-gateway
 *
 * Provisions Application Gateway via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "application-gateway"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
