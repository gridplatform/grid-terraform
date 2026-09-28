/**
 * Huawei Cloud — dayu
 *
 * Provisions Dayu via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dayu"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
