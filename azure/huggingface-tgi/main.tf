/**
 * Microsoft Azure — huggingface-tgi
 *
 * Provisions Huggingface Tgi via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "huggingface-tgi"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
