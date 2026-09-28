/**
 * Huawei Cloud — kafka
 *
 * Provisions Kafka via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "kafka"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
