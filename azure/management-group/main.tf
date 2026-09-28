/**
 * Microsoft Azure — management-group
 *
 * Provisions Management Group via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "management-group"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
