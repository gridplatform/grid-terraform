/**
 * Alibaba Cloud — rds
 *
 * Provisions Rds via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "rds"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
