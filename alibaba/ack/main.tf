/**
 * Alibaba Cloud — ack
 *
 * Provisions Ack via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ack"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
