/**
 * Tencent Cloud — cls
 *
 * Provisions Cls via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "cls"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
