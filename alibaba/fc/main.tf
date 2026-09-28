/**
 * Alibaba Cloud — fc
 *
 * Provisions Fc via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "fc"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
