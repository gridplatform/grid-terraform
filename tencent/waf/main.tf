/**
 * Tencent Cloud — waf
 *
 * Provisions Waf via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "waf"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
