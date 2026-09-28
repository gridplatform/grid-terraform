/**
 * Microsoft Azure — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "gpu-node-pool"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
