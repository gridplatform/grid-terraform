/**
 * Alibaba Cloud — milvus
 *
 * Provisions Milvus via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "milvus"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
