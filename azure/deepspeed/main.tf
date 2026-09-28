/**
 * Microsoft Azure — deepspeed
 *
 * Provisions Deepspeed via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "deepspeed"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
