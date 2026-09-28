/**
 * Oracle Cloud Infrastructure (OCI) — data-integration
 *
 * Provisions Data Integration via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "data-integration"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
