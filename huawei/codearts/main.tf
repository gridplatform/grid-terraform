/**
 * Huawei Cloud — codearts
 *
 * Provisions Codearts via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "codearts"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
