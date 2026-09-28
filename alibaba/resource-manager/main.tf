/**
 * Alibaba Cloud — resource-manager
 *
 * Provisions Resource Manager via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "resource-manager"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
