/**
 * Tencent Cloud — nat
 *
 * Provisions Nat via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "nat"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
