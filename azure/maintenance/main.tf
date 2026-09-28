/**
 * Microsoft Azure — maintenance
 *
 * Provisions Maintenance via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "maintenance"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
