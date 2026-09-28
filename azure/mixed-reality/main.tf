/**
 * Microsoft Azure — mixed-reality
 *
 * Provisions Mixed Reality via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "mixed-reality"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
