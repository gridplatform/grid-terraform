/**
 * Alibaba Cloud — dataworks
 *
 * Provisions Dataworks via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "dataworks"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
