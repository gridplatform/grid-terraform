/**
 * Alibaba Cloud — kafka
 *
 * Provisions Kafka via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "kafka"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
