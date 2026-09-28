/**
 * Microsoft Azure — sql-server
 *
 * Provisions Sql Server via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "sql-server"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
