/**
 * Microsoft Azure — traffic-manager
 *
 * Provisions Traffic Manager via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "traffic-manager"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
