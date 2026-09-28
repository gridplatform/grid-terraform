/**
 * Oracle Cloud Infrastructure (OCI) — block-volume
 *
 * Provisions Block Volume via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "block-volume"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
