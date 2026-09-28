/**
 * Oracle Cloud Infrastructure (OCI) — vault
 *
 * Provisions Vault via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "vault"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
