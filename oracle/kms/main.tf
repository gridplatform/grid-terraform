/**
 * Oracle Cloud Infrastructure (OCI) — kms
 *
 * Provisions Kms via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "kms"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
