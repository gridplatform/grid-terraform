/**
 * Oracle Cloud Infrastructure (OCI) — api-gateway
 *
 * Provisions Api Gateway via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "api-gateway"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
