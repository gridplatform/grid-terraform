/**
 * Alibaba Cloud — vpn
 *
 * Provisions Vpn via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "vpn"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
