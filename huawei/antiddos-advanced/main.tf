/**
 * Huawei Cloud — antiddos-advanced
 *
 * Provisions Antiddos Advanced via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "antiddos-advanced"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
