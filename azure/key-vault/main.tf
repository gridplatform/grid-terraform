/**
 * Microsoft Azure — key-vault
 *
 * Provisions Key Vault via the terraform Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "key-vault"
    tf_provider = "terraform"
    note        = "module placeholder"
  }
}
