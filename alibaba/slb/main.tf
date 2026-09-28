/**
 * Alibaba Cloud — slb
 *
 * Provisions Slb via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "slb"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
