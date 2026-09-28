/**
 * Alibaba Cloud — emr
 *
 * Provisions Emr via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "emr"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
