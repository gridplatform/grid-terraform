/**
 * Tencent Cloud — load-balancer
 *
 * Provisions Load Balancer via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "load-balancer"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
