/**
 * Microsoft Azure — domain-services
 *
 * Provisions Domain Services via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "domain-services"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
