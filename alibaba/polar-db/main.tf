/**
 * Alibaba Cloud — polar-db
 *
 * Provisions Polar Db via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "polar-db"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
