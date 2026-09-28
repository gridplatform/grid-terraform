/**
 * Tencent Cloud — tcb
 *
 * Provisions Tcb via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tcb"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
