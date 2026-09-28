/**
 * Microsoft Azure — mssql-managed-instance
 *
 * Provisions Mssql Managed Instance via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "mssql-managed-instance"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
