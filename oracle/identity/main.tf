/**
 * Oracle Cloud Infrastructure (OCI) — identity
 *
 * Provisions Identity via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "identity"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
