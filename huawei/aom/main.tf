/**
 * Huawei Cloud — aom
 *
 * Provisions Aom via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "aom"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
