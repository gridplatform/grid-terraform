/**
 * Huawei Cloud — private-nat
 *
 * Provisions Private Nat via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "private-nat"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
