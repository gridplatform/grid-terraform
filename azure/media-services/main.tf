/**
 * Microsoft Azure — media-services
 *
 * Provisions Media Services via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "media-services"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
