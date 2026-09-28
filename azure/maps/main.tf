/**
 * Microsoft Azure — maps
 *
 * Provisions Maps via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "maps"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
