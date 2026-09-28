/**
 * Microsoft Azure — weaviate
 *
 * Provisions Weaviate via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "weaviate"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
