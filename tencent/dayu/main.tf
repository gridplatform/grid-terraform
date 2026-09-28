/**
 * Tencent Cloud — dayu
 *
 * Provisions Dayu via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "dayu"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
