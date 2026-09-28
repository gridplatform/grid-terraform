/**
 * Oracle Cloud Infrastructure (OCI) — data-safe
 *
 * Provisions Data Safe via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "data-safe"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
