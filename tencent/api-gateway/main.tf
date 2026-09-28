/**
 * Tencent Cloud — api-gateway
 *
 * Provisions Api Gateway via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "api-gateway"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
