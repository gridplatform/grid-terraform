/**
 * Tencent Cloud — monitor
 *
 * Provisions Monitor via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "monitor"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
