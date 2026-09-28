/**
 * Huawei Cloud — cdm
 *
 * Provisions Cdm via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cdm"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
