/**
 * Huawei Cloud — identity-center
 *
 * Provisions Identity Center via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "identity-center"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
