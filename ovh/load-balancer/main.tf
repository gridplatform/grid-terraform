/**
 * OVHcloud — load-balancer
 *
 * Provisions Load Balancer via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "load-balancer"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
