/**
 * Microsoft Azure — ollama
 *
 * Provisions Ollama via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "ollama"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
