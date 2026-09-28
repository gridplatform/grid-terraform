/**
 * Alibaba Cloud — vswitch
 *
 * Provisions Vswitch via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "vswitch"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
