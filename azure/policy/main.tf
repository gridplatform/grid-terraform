/**
 * Microsoft Azure — policy
 *
 * Provisions Policy via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "policy"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
