/**
 * Tencent Cloud — security-group
 *
 * Provisions Security Group via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "security-group"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
