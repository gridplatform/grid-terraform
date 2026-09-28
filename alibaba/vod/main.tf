/**
 * Alibaba Cloud — vod
 *
 * Provisions Vod via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "vod"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
