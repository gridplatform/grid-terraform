/**
 * Microsoft Azure — front-door
 *
 * Provisions Front Door via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "front-door"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
