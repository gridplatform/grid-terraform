/**
 * Huawei Cloud — kms
 *
 * Provisions Kms via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "kms"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
