/**
 * Oracle Cloud Infrastructure (OCI) — data-flow
 *
 * Provisions Data Flow via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "data-flow"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
