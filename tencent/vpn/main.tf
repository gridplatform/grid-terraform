/**
 * Tencent Cloud — vpn
 *
 * Provisions Vpn via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "vpn"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
