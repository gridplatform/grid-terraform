/**
 * Microsoft Azure — container-apps
 *
 * Provisions Container Apps via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "container-apps"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
