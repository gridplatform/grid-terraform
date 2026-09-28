/**
 * Microsoft Azure — nvidia-nim
 *
 * Provisions Nvidia Nim via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "nvidia-nim"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
