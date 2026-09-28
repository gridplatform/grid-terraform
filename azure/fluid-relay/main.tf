/**
 * Microsoft Azure — fluid-relay
 *
 * Provisions Fluid Relay via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "fluid-relay"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
