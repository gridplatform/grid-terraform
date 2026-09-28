/**
 * Tencent Cloud — cam
 *
 * Provisions Cam via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "cam"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
