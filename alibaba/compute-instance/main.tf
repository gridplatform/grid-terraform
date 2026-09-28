/**
 * Alibaba Cloud — compute-instance
 *
 * Provisions Compute Instance via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "compute-instance"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
