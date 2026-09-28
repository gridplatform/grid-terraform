/**
 * Microsoft Azure — elastic-san
 *
 * Provisions Elastic San via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "elastic-san"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
