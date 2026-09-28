/**
 * Alibaba Cloud — api-gateway
 *
 * Provisions Api Gateway via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "api-gateway"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
