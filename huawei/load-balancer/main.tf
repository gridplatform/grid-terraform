/**
 * Huawei Cloud — load-balancer
 *
 * Provisions Load Balancer via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "load-balancer"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
