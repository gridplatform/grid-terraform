/**
 * Microsoft Azure — data-protection
 *
 * Provisions Data Protection via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "data-protection"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
