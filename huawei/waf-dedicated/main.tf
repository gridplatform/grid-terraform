/**
 * Huawei Cloud — waf-dedicated
 *
 * Provisions Waf Dedicated via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "waf-dedicated"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
