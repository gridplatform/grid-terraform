/**
 * Huawei Cloud — roma
 *
 * Provisions Roma via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "roma"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
