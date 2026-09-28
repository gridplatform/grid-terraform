/**
 * Microsoft Azure — kserve
 *
 * Provisions Kserve via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "kserve"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
