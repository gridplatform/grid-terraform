/**
 * Alibaba Cloud — oss
 *
 * Provisions Oss via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "oss"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
