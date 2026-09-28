/**
 * Tencent Cloud — vod
 *
 * Provisions Vod via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "vod"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
