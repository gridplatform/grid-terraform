/**
 * Alibaba Cloud — config
 *
 * Provisions Config via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "config"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
