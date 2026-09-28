/**
 * Microsoft Azure — relay
 *
 * Provisions Relay via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "relay"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
