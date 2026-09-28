/**
 * Alibaba Cloud — alb
 *
 * Provisions Alb via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "alb"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
