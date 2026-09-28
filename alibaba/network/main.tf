/**
 * Alibaba Cloud — network
 *
 * Provisions Network via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "network"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
