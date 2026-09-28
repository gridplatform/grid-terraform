/**
 * Microsoft Azure — vmware
 *
 * Provisions Vmware via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "vmware"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
