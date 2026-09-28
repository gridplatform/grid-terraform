/**
 * Tencent Cloud — cdn
 *
 * Provisions Cdn via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "cdn"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
