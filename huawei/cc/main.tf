/**
 * Huawei Cloud — cc
 *
 * Provisions Cc via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cc"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
