/**
 * Microsoft Azure — iotcentral
 *
 * Provisions Iotcentral via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "iotcentral"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
