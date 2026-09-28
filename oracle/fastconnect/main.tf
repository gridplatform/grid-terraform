/**
 * Oracle Cloud Infrastructure (OCI) — fastconnect
 *
 * Provisions Fastconnect via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "fastconnect"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
