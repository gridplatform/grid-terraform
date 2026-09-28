/**
 * Tencent Cloud — cos-bucket
 *
 * Provisions Cos Bucket via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "cos-bucket"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
