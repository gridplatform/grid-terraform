/**
 * Microsoft Azure — api-management
 *
 * Provisions Api Management via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "api-management"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
