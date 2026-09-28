/**
 * Alibaba Cloud — dts
 *
 * Provisions Dts via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "dts"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
