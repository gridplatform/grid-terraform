/**
 * Microsoft Azure — digital-twins
 *
 * Provisions Digital Twins via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "digital-twins"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
