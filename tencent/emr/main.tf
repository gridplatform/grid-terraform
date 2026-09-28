/**
 * Tencent Cloud — emr
 *
 * Provisions Emr via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "emr"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
