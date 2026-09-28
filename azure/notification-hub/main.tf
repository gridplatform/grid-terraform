/**
 * Microsoft Azure — notification-hub
 *
 * Provisions Notification Hub via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "notification-hub"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
