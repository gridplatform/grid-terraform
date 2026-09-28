/**
 * Microsoft Azure — private-endpoint
 *
 * Provisions Private Endpoint via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "private-endpoint"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
