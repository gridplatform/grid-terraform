/**
 * Huawei Cloud — swr
 *
 * Provisions Swr via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "swr"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
