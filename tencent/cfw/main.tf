/**
 * Tencent Cloud — cfw
 *
 * Provisions Cfw via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "cfw"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
