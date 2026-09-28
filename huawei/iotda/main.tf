/**
 * Huawei Cloud — iotda
 *
 * Provisions Iotda via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "iotda"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
