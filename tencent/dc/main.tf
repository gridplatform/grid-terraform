/**
 * Tencent Cloud — dc
 *
 * Provisions Dc via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "dc"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
