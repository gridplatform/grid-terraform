/**
 * Huawei Cloud — eip
 *
 * Provisions Eip via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "eip"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
