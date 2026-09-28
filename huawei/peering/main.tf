/**
 * Huawei Cloud — peering
 *
 * Provisions Peering via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "peering"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
