/**
 * Microsoft Azure — milvus
 *
 * Provisions Milvus via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "milvus"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
