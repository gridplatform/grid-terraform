/**
 * Huawei Cloud — dis
 *
 * Provisions Dis via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dis"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
