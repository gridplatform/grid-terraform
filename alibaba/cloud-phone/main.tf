/**
 * Alibaba Cloud — cloud-phone
 *
 * Provisions Cloud Phone via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "cloud-phone"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
