/**
 * Huawei Cloud — dms-kafka
 *
 * Provisions Dms Kafka via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dms-kafka"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
