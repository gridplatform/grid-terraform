/**
 * Microsoft Azure — bastion
 *
 * Provisions Bastion via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "bastion"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
