/**
 * Huawei Cloud — cph
 *
 * Provisions Cph via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cph"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
