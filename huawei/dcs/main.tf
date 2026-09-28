/**
 * Huawei Cloud — dcs
 *
 * Provisions Dcs via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dcs"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
