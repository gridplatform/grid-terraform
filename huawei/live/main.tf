/**
 * Huawei Cloud — live
 *
 * Provisions Live via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "live"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
