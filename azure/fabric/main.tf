/**
 * Microsoft Azure — fabric
 *
 * Provisions Fabric via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "fabric"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
