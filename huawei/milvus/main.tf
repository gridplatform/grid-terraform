/**
 * Huawei Cloud — milvus
 *
 * Provisions Milvus via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "milvus"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
