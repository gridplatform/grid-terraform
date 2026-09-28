/**
 * Alibaba Cloud — ecs
 *
 * Provisions Ecs via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ecs"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
