/**
 * Microsoft Azure — ai-foundry
 *
 * Provisions Ai Foundry via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "ai-foundry"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
