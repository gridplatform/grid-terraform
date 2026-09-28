/**
 * Microsoft Azure — eventgrid
 *
 * Provisions Eventgrid via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "eventgrid"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
