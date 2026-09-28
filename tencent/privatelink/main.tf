/**
 * Tencent Cloud — privatelink
 *
 * Provisions Privatelink via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "privatelink"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
