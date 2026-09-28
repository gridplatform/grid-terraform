/**
 * Microsoft Azure — power-bi
 *
 * Provisions Power Bi via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "power-bi"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
