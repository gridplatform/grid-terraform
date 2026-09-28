/**
 * Huawei Cloud — lts
 *
 * Provisions Lts via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "lts"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
