/**
 * Microsoft Azure — qdrant
 *
 * Provisions Qdrant via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "qdrant"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
