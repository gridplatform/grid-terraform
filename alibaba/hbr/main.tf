/**
 * Alibaba Cloud — hbr
 *
 * Provisions Hbr via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "hbr"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
