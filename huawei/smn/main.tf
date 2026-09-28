/**
 * Huawei Cloud — smn
 *
 * Provisions Smn via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "smn"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
