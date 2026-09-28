/**
 * Huawei Cloud — sms
 *
 * Provisions Sms via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "sms"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
