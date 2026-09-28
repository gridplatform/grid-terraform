/**
 * Huawei Cloud — cbh
 *
 * Provisions Cbh via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cbh"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
