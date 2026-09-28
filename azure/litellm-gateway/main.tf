/**
 * Microsoft Azure — litellm-gateway
 *
 * Provisions Litellm Gateway via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "litellm-gateway"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
