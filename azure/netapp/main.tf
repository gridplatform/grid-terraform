/**
 * Microsoft Azure — netapp
 *
 * Provisions Netapp via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "netapp"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
