/**
 * Huawei Cloud — dns
 *
 * Provisions Dns via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dns"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
