/**
 * Alibaba Cloud — security-group
 *
 * Provisions Security Group via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "security-group"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
