/**
 * Tencent Cloud — clb
 *
 * Provisions Clb via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "clb"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
