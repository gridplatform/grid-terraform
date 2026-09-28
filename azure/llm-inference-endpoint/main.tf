/**
 * Microsoft Azure — llm-inference-endpoint
 *
 * Provisions Llm Inference Endpoint via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "llm-inference-endpoint"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
