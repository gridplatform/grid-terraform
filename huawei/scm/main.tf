/**
 * Huawei Cloud — scm
 *
 * Provisions Scm via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "scm"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
