/**
 * Microsoft Azure — firewall
 *
 * Provisions Firewall via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "firewall"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
