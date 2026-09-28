/**
 * Microsoft Azure — mariadb
 *
 * Provisions Mariadb via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "mariadb"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
