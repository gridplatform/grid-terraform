/**
 * Tencent Cloud — mongodb
 *
 * Provisions Mongodb via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "mongodb"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
