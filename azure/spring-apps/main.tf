/**
 * Microsoft Azure — spring-apps
 *
 * Provisions Spring Apps via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "spring-apps"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
