/**
 * Alibaba Cloud — holo
 *
 * Provisions Holo via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "holo"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
