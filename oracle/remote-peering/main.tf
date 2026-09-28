/**
 * Oracle Cloud Infrastructure (OCI) — remote-peering
 *
 * Provisions Remote Peering via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "remote-peering"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
