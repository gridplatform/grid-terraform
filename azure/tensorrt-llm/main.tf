/**
 * Microsoft Azure — tensorrt-llm
 *
 * Provisions Tensorrt Llm via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "tensorrt-llm"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
