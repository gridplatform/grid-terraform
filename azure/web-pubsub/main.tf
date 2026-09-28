/**
 * Microsoft Azure — web-pubsub
 *
 * Provisions Web Pubsub via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "web-pubsub"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
