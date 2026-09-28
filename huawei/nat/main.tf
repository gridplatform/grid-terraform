/**
 * Huawei Cloud — nat
 *
 * Provisions Nat via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "nat"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
