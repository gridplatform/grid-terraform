/**
 * Microsoft Azure — redis-enterprise
 *
 * Provisions Redis Enterprise via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "redis-enterprise"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
