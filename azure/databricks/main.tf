/**
 * Microsoft Azure — databricks
 *
 * Provisions Databricks via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "databricks"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
