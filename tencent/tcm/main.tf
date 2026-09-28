/**
 * Tencent Cloud — tcm
 *
 * Provisions Tcm via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tcm"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
