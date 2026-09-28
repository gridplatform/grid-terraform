/**
 * Alibaba Cloud — ack-node-pool
 *
 * Provisions Ack Node Pool via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ack-node-pool"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
