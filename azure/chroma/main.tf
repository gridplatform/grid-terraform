/**
 * Microsoft Azure — chroma
 *
 * Provisions Chroma via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "chroma"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
