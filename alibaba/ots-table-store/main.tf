/**
 * Alibaba Cloud — ots-table-store
 *
 * Provisions Ots Table Store via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ots-table-store"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
