/**
 * Microsoft Azure — data-factory
 *
 * Provisions Data Factory via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "data-factory"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
