/**
 * Huawei Cloud — network-acl
 *
 * Provisions Network Acl via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "network-acl"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
