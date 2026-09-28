/**
 * Tencent Cloud — ga
 *
 * Provisions Ga via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "ga"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
