/**
 * Tencent Cloud — cdb
 *
 * Provisions Cdb via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "cdb"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
