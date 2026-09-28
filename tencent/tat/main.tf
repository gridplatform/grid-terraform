/**
 * Tencent Cloud — tat
 *
 * Provisions Tat via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tat"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
