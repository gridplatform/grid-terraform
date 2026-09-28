/**
 * Alibaba Cloud — redis
 *
 * Provisions Redis via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "redis"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
