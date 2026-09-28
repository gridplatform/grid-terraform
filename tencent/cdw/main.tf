/**
 * Tencent Cloud — cdw
 *
 * Provisions Cdw via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "cdw"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
