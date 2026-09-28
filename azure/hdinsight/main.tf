/**
 * Microsoft Azure — hdinsight
 *
 * Provisions Hdinsight via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "hdinsight"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
