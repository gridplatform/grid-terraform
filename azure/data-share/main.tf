/**
 * Microsoft Azure — data-share
 *
 * Provisions Data Share via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "data-share"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
