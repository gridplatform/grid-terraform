/**
 * Alibaba Cloud — object-storage
 *
 * Provisions Object Storage via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "object-storage"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
