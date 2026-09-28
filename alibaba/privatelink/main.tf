/**
 * Alibaba Cloud — privatelink
 *
 * Provisions Privatelink via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "privatelink"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
