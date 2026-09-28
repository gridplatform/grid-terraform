/**
 * Huawei Cloud — cfw
 *
 * Provisions Cfw via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cfw"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
