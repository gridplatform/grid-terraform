/**
 * Alibaba Cloud — load-balancer
 *
 * Provisions Load Balancer via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "load-balancer"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
