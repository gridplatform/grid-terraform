/**
 * Microsoft Azure — managed-disk
 *
 * Provisions Managed Disk via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "managed-disk"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
