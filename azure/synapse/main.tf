/**
 * Microsoft Azure — synapse
 *
 * Provisions Synapse via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "synapse"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
