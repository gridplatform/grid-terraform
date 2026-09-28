/**
 * Yotta — load-balancer
 *
 * Provisions Load Balancer via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "load-balancer"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
