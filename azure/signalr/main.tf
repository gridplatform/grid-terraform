/**
 * Microsoft Azure — signalr
 *
 * Provisions Signalr via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "signalr"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
