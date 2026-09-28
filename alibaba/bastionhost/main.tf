/**
 * Alibaba Cloud — bastionhost
 *
 * Provisions Bastionhost via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "bastionhost"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
