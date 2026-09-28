/**
 * Tencent Cloud — live
 *
 * Provisions Live via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "live"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
