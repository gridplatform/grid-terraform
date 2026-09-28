/**
 * Microsoft Azure — batch
 *
 * Provisions Batch via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "batch"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
