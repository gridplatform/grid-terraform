/**
 * Microsoft Azure — purview
 *
 * Provisions Purview via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "purview"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
