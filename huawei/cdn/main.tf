/**
 * Huawei Cloud — cdn
 *
 * Provisions Cdn via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cdn"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
