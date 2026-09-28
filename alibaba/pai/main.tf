/**
 * Alibaba Cloud — pai
 *
 * Provisions Pai via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "pai"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
