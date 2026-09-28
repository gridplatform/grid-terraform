/**
 * Alibaba Cloud — imm
 *
 * Provisions Imm via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "imm"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
