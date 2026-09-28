/**
 * Microsoft Azure — open-webui
 *
 * Provisions Open Webui via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "open-webui"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
