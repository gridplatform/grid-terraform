/**
 * Tencent Cloud — tcr
 *
 * Provisions Tcr via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tcr"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
