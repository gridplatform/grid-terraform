/**
 * Oracle Cloud Infrastructure (OCI) — drg
 *
 * Provisions Drg via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "drg"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
