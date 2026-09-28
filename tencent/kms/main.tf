/**
 * Tencent Cloud — kms
 *
 * Provisions Kms via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "kms"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
