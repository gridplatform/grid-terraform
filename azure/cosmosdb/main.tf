/**
 * Microsoft Azure — cosmosdb
 *
 * Provisions Cosmosdb via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "cosmosdb"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
