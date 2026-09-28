/**
 * Alibaba Cloud — gpu-instance
 *
 * Provisions Gpu Instance via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "gpu-instance"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
