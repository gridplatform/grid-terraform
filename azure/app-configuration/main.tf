/**
 * Microsoft Azure — app-configuration
 *
 * Provisions App Configuration via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "app-configuration"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
