/**
 * Huawei Cloud — network
 *
 * Provisions Network via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "network"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
