/**
 * Huawei Cloud — bms
 *
 * Provisions Bms via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "bms"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
