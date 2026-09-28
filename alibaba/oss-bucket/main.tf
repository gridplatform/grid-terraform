/**
 * Alibaba Cloud — oss-bucket
 *
 * Provisions Oss Bucket via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "oss-bucket"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
