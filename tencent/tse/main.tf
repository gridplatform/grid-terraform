/**
 * Tencent Cloud — tse
 *
 * Provisions Tse via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tse"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
