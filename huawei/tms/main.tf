/**
 * Huawei Cloud — tms
 *
 * Provisions Tms via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "tms"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
