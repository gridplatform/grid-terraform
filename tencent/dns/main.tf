/**
 * Tencent Cloud — dns
 *
 * Provisions Dns via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "dns"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
