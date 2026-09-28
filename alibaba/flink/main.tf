/**
 * Alibaba Cloud — flink
 *
 * Provisions Flink via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "flink"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
