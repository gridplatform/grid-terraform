/**
 * Alibaba Cloud — eip
 *
 * Provisions Eip via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "eip"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
