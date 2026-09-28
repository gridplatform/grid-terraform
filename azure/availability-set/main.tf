/**
 * Microsoft Azure — availability-set
 *
 * Provisions Availability Set via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "availability-set"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
