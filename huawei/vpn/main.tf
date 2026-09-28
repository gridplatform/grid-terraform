/**
 * Huawei Cloud — vpn
 *
 * Provisions Vpn via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "vpn"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
