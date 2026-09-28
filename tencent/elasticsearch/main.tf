/**
 * Tencent Cloud — elasticsearch
 *
 * Provisions Elasticsearch via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "elasticsearch"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
