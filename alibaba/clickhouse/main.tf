/**
 * Alibaba Cloud — clickhouse
 *
 * Provisions Clickhouse via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "clickhouse"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
