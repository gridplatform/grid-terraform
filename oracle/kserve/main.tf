/**
 * Oracle Cloud Infrastructure (OCI) — kserve
 *
 * Provisions Kserve via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "kserve"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
