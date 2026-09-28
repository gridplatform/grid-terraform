/**
 * Alibaba Cloud — waf
 *
 * Provisions Waf via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "waf"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
