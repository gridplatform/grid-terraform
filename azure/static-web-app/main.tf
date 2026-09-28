/**
 * Microsoft Azure — static-web-app
 *
 * Provisions Static Web App via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "static-web-app"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
