/**
 * Tencent Cloud — tke
 *
 * Provisions Tke via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tke"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
