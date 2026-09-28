/**
 * Tencent Cloud — tiia
 *
 * Provisions Tiia via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tiia"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
