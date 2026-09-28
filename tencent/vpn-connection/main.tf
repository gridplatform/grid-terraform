/**
 * Tencent Cloud — vpn-connection
 *
 * Provisions Vpn Connection via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "vpn-connection"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
