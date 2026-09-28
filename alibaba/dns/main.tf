/**
 * Alibaba Cloud — dns
 *
 * Provisions Dns via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "dns"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
