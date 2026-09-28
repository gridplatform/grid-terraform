/**
 * Alibaba Cloud — eas
 *
 * Provisions Eas via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "eas"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
