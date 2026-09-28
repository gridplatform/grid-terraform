/**
 * Oracle Cloud Infrastructure (OCI) — local-peering
 *
 * Provisions Local Peering via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "local-peering"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
