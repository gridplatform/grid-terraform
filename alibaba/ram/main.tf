/**
 * Alibaba Cloud — ram
 *
 * Provisions Ram via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ram"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
