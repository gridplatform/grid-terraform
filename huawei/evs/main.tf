/**
 * Huawei Cloud — evs
 *
 * Provisions Evs via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "evs"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
