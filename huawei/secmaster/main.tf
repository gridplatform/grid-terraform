/**
 * Huawei Cloud — secmaster
 *
 * Provisions Secmaster via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "secmaster"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
