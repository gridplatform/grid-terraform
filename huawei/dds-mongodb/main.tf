/**
 * Huawei Cloud — dds-mongodb
 *
 * Provisions Dds Mongodb via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dds-mongodb"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
