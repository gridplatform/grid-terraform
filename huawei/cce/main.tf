/**
 * Huawei Cloud — cce
 *
 * Provisions Cce via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cce"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
