/**
 * Huawei Cloud — deh
 *
 * Provisions Deh via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "deh"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
