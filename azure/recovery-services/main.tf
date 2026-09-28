/**
 * Microsoft Azure — recovery-services
 *
 * Provisions Recovery Services via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "recovery-services"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
