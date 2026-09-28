/**
 * Microsoft Azure — triton-inference-server
 *
 * Provisions Triton Inference Server via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "triton-inference-server"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
