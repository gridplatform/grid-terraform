/**
 * Microsoft Azure — hpc-cache
 *
 * Provisions Hpc Cache via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "hpc-cache"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
