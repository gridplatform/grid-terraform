/**
 * Alibaba Cloud — container-registry
 *
 * Provisions Container Registry via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "container-registry"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
