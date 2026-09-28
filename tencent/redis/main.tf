/**
 * Tencent Cloud — redis
 *
 * Provisions Redis via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "redis"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
