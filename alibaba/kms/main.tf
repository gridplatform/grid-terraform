/**
 * Alibaba Cloud — kms
 *
 * Provisions Kms via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "kms"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
