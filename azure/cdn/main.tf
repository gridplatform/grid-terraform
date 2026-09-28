/**
 * Microsoft Azure — cdn
 *
 * Provisions Cdn via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "cdn"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
