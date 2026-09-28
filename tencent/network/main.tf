/**
 * Tencent Cloud — network
 *
 * Provisions Network via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "network"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
