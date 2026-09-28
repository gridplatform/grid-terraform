/**
 * Alibaba Cloud — ddos
 *
 * Provisions Ddos via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ddos"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
