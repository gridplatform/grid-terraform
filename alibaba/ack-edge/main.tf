/**
 * Alibaba Cloud — ack-edge
 *
 * Provisions Ack Edge via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ack-edge"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
