/**
 * Tencent Cloud — cynosdb
 *
 * Provisions Cynosdb via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "cynosdb"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
