/**
 * Tencent Cloud — cbs
 *
 * Provisions Cbs via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "cbs"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
