/**
 * Alibaba Cloud — smart-hosting
 *
 * Provisions Smart Hosting via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "smart-hosting"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
