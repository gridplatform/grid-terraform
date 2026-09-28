/**
 * Alibaba Cloud — analyticdb
 *
 * Provisions Analyticdb via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "analyticdb"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
