/**
 * Oracle Cloud Infrastructure (OCI) — nat-gateway
 *
 * Provisions Nat Gateway via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "nat-gateway"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
