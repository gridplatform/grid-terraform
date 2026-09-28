/**
 * Alibaba Cloud — cloud-firewall
 *
 * Provisions Cloud Firewall via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "cloud-firewall"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
