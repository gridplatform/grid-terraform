/**
 * Microsoft Azure — load-test
 *
 * Provisions Load Test via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "load-test"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
