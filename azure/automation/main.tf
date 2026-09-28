/**
 * Microsoft Azure — automation
 *
 * Provisions Automation via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "automation"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
