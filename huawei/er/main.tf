/**
 * Huawei Cloud — er
 *
 * Provisions Er via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "er"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
