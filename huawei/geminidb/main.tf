/**
 * Huawei Cloud — geminidb
 *
 * Provisions Geminidb via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "geminidb"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
