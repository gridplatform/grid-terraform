/**
 * Tencent Cloud — tsf
 *
 * Provisions Tsf via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tsf"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
