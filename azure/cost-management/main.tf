/**
 * Microsoft Azure — cost-management
 *
 * Provisions Cost Management via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "cost-management"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
