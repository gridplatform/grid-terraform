/**
 * Alibaba Cloud — nas
 *
 * Provisions Nas via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "nas"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
