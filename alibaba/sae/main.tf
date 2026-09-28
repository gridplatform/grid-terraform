/**
 * Alibaba Cloud — sae
 *
 * Provisions Sae via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "sae"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
