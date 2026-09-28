/**
 * Alibaba Cloud — express-connect
 *
 * Provisions Express Connect via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "express-connect"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
