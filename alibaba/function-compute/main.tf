/**
 * Alibaba Cloud — function-compute
 *
 * Provisions Function Compute via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "function-compute"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
