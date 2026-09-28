/**
 * Microsoft Azure — stream-analytics
 *
 * Provisions Stream Analytics via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "stream-analytics"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
