/**
 * Tencent Cloud — eip
 *
 * Provisions Eip via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "eip"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
