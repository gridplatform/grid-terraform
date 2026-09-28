/**
 * Huawei Cloud — dds
 *
 * Provisions Dds via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dds"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
