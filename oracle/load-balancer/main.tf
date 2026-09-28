/**
 * Oracle Cloud Infrastructure (OCI) — load-balancer
 *
 * Provisions Load Balancer via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "load-balancer"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
