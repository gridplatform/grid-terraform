/**
 * Alibaba Cloud — maxcompute
 *
 * Provisions Maxcompute via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "maxcompute"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
