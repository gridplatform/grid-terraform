/**
 * Microsoft Azure — iothub
 *
 * Provisions Iothub via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "iothub"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
