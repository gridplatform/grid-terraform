/**
 * Alibaba Cloud — rocketmq
 *
 * Provisions Rocketmq via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "rocketmq"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
