/**
 * Huawei Cloud — organizations
 *
 * Provisions Organizations via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "organizations"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
