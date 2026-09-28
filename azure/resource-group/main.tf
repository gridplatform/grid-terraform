/**
 * Microsoft Azure — resource-group
 *
 * Provisions Resource Group via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "resource-group"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
