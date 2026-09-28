/**
 * Microsoft Azure — pgvector
 *
 * Provisions Pgvector via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "pgvector"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
