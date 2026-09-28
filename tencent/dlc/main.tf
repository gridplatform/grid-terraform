/**
 * Tencent Cloud — dlc
 *
 * Provisions Dlc via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "dlc"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
