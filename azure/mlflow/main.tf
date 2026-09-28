/**
 * Microsoft Azure — mlflow
 *
 * Provisions Mlflow via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "mlflow"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
