/**
 * Microsoft Azure — communication-services
 *
 * Provisions Communication Services via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "communication-services"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
