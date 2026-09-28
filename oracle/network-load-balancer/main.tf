/**
 * Oracle Cloud Infrastructure (OCI) — network-load-balancer
 *
 * Provisions Network Load Balancer via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "network-load-balancer"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
