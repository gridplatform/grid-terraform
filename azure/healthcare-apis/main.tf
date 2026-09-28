/**
 * Microsoft Azure — healthcare-apis
 *
 * Provisions Healthcare Apis via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "healthcare-apis"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
