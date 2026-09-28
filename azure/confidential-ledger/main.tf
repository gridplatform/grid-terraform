/**
 * Microsoft Azure — confidential-ledger
 *
 * Provisions Confidential Ledger via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "confidential-ledger"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
