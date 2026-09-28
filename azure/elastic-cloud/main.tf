/**
 * Microsoft Azure — elastic-cloud
 *
 * Provisions Elastic Cloud via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "elastic-cloud"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
