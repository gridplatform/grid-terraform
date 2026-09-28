/**
 * Huawei Cloud — config
 *
 * Provisions Config via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "config"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
