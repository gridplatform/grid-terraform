/**
 * Alibaba Cloud — ess
 *
 * Provisions Ess via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ess"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
