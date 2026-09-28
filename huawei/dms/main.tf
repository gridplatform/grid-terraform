/**
 * Huawei Cloud — dms
 *
 * Provisions Dms via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dms"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
