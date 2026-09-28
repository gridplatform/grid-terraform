/**
 * Huawei Cloud — hss
 *
 * Provisions Hss via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "hss"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
