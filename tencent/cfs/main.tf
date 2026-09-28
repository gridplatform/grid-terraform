/**
 * Tencent Cloud — cfs
 *
 * Provisions Cfs via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "cfs"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
