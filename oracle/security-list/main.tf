/**
 * Oracle Cloud Infrastructure (OCI) — security-list
 *
 * Provisions Security List via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "security-list"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
