/**
 * Oracle Cloud Infrastructure (OCI) — golden-gate
 *
 * Provisions Golden Gate via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "golden-gate"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
