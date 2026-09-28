/**
 * Alibaba Cloud — cloud-config
 *
 * Provisions Cloud Config via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "cloud-config"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
