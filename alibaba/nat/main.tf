/**
 * Alibaba Cloud — nat
 *
 * Provisions Nat via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "nat"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
