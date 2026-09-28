/**
 * Oracle Cloud Infrastructure (OCI) — language
 *
 * Provisions Language via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "language"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
