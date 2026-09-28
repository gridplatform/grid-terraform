/**
 * Microsoft Azure — vllm
 *
 * Provisions Vllm via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "vllm"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
