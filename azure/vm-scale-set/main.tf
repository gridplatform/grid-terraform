/**
 * Microsoft Azure — vm-scale-set
 *
 * Provisions Vm Scale Set via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "vm-scale-set"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
