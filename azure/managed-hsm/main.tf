/**
 * Microsoft Azure — managed-hsm
 *
 * Provisions Managed Hsm via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "managed-hsm"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
