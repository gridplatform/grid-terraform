/**
 * Huawei Cloud — cts
 *
 * Provisions Cts via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cts"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
