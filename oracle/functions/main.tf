/**
 * Oracle Cloud Infrastructure (OCI) — functions
 *
 * Provisions Functions via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "functions"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
