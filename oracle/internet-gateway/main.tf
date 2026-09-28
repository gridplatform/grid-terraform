/**
 * Oracle Cloud Infrastructure (OCI) — internet-gateway
 *
 * Provisions Internet Gateway via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "internet-gateway"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
