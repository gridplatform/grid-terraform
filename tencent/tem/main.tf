/**
 * Tencent Cloud — tem
 *
 * Provisions Tem via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tem"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
