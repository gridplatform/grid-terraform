/**
 * Huawei Cloud — ccm
 *
 * Provisions Ccm via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "ccm"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
