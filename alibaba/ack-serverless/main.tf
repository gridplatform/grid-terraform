/**
 * Alibaba Cloud — ack-serverless
 *
 * Provisions Ack Serverless via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ack-serverless"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
