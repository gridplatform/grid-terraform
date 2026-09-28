/**
 * Microsoft Azure — sglang
 *
 * Provisions Sglang via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "sglang"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
