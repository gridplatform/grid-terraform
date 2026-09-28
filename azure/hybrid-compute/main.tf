/**
 * Microsoft Azure — hybrid-compute
 *
 * Provisions Hybrid Compute via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "hybrid-compute"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
