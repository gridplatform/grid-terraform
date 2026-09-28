/**
 * Huawei Cloud — ims
 *
 * Provisions Ims via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "ims"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
