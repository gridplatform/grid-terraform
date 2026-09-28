/**
 * Huawei Cloud — hilens
 *
 * Provisions Hilens via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "hilens"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
