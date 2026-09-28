/**
 * Microsoft Azure — lighthouse
 *
 * Provisions Lighthouse via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "lighthouse"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
