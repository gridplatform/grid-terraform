/**
 * Alibaba Cloud — vpn-gateway
 *
 * Provisions Vpn Gateway via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "vpn-gateway"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
