/**
 * Tencent Cloud — oceanus
 *
 * Provisions Oceanus via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "oceanus"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
