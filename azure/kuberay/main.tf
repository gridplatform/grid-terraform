/**
 * Microsoft Azure — kuberay
 *
 * Provisions Kuberay via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "kuberay"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
