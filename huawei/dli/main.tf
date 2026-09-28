/**
 * Huawei Cloud — dli
 *
 * Provisions Dli via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dli"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
