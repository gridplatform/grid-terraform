/**
 * Tencent Cloud — ssl
 *
 * Provisions Ssl via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "ssl"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
