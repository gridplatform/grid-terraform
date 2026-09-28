/**
 * Microsoft Azure — kusto
 *
 * Provisions Kusto via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "kusto"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
