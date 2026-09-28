/**
 * Huawei Cloud — apig
 *
 * Provisions Apig via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "apig"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
