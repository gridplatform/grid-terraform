/**
 * Microsoft Azure — sentinel
 *
 * Provisions Sentinel via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "sentinel"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
