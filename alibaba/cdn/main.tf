/**
 * Alibaba Cloud — cdn
 *
 * Provisions Cdn via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "cdn"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
