/**
 * Alibaba Cloud — arms
 *
 * Provisions Arms via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "arms"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
