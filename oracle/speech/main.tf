/**
 * Oracle Cloud Infrastructure (OCI) — speech
 *
 * Provisions Speech via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "speech"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
