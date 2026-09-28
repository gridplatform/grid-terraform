/**
 * Huawei Cloud — kserve
 *
 * Provisions Kserve via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "kserve"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
