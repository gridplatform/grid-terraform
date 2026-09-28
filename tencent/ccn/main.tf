/**
 * Tencent Cloud — ccn
 *
 * Provisions Ccn via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "ccn"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
