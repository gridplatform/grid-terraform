/**
 * Alibaba Cloud — mongodb
 *
 * Provisions Mongodb via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "mongodb"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
