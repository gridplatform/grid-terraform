/**
 * Huawei Cloud — dws
 *
 * Provisions Dws via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dws"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
