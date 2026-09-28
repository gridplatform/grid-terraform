/**
 * Alibaba Cloud — ots
 *
 * Provisions Ots via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ots"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
