/**
 * Alibaba Cloud — cen
 *
 * Provisions Cen via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "cen"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
