/**
 * Microsoft Azure — graph
 *
 * Provisions Graph via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "graph"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
