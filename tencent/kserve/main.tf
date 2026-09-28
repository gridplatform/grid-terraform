/**
 * Tencent Cloud — kserve
 *
 * Provisions Kserve via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "kserve"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
