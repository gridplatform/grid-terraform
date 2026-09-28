/**
 * Microsoft Azure — nvidia-gpu-operator
 *
 * Provisions Nvidia Gpu Operator via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "nvidia-gpu-operator"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
