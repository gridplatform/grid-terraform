/**
 * Tencent Cloud — tdmq
 *
 * Provisions Tdmq via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tdmq"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
