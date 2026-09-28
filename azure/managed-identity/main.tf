/**
 * Microsoft Azure — managed-identity
 *
 * Provisions Managed Identity via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "managed-identity"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
