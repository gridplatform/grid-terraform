/**
 * Alibaba Cloud — disk
 *
 * Provisions Disk via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "disk"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
