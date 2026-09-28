/**
 * Huawei Cloud — obs-bucket
 *
 * Provisions Obs Bucket via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "obs-bucket"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
