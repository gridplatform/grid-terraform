/**
 * Alibaba Cloud — ga
 *
 * Provisions Ga via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ga"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
