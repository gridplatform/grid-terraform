/**
 * Microsoft Azure — public-ip
 *
 * Provisions Public Ip via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "public-ip"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
