/**
 * Oracle Cloud Infrastructure (OCI) — marketplace
 *
 * Provisions Marketplace via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "marketplace"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
