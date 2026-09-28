/**
 * Alibaba Cloud — kserve
 *
 * Provisions Kserve via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "kserve"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
