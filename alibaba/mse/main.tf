/**
 * Alibaba Cloud — mse
 *
 * Provisions Mse via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "mse"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
