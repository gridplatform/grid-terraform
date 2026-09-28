/**
 * Microsoft Azure — role-assignment
 *
 * Provisions Role Assignment via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "role-assignment"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
