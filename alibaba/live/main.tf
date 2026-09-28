/**
 * Alibaba Cloud — live
 *
 * Provisions Live via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "live"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
