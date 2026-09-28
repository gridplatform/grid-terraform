/**
 * Huawei Cloud — antiddos
 *
 * Provisions Antiddos via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "antiddos"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
