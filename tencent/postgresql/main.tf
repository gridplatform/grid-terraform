/**
 * Tencent Cloud — postgresql
 *
 * Provisions Postgresql via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "postgresql"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
