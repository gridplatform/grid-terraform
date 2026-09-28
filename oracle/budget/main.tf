/**
 * Oracle Cloud Infrastructure (OCI) — budget
 *
 * Provisions Budget via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "budget"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
