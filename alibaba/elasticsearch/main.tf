/**
 * Alibaba Cloud — elasticsearch
 *
 * Provisions Elasticsearch via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "elasticsearch"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
