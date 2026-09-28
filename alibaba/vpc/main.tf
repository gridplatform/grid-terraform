/**
 * Alibaba Cloud — vpc
 *
 * Provisions Vpc via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "vpc"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
