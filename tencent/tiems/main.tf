/**
 * Tencent Cloud — tiems
 *
 * Provisions Tiems via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tiems"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
