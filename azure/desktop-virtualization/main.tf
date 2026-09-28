/**
 * Microsoft Azure — desktop-virtualization
 *
 * Provisions Desktop Virtualization via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "desktop-virtualization"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
