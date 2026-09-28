/**
 * Oracle Cloud Infrastructure (OCI) — network
 *
 * Provisions Network via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "network"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
