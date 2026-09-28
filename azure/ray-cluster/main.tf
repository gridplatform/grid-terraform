/**
 * Microsoft Azure — ray-cluster
 *
 * Provisions Ray Cluster via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "ray-cluster"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
