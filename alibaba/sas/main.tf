/**
 * Alibaba Cloud — sas
 *
 * Provisions Sas via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "sas"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
