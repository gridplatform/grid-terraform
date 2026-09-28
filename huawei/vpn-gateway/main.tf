/**
 * Huawei Cloud — vpn-gateway
 *
 * Provisions Vpn Gateway via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "vpn-gateway"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
