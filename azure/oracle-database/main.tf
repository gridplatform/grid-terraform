/**
 * Microsoft Azure — oracle-database
 *
 * Provisions Oracle Database via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "oracle-database"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
