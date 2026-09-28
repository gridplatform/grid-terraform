/**
 * Oracle Cloud Infrastructure (OCI) — media-flow
 *
 * Provisions Media Flow via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "media-flow"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
