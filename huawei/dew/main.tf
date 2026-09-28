/**
 * Huawei Cloud — dew
 *
 * Provisions Dew via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dew"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
