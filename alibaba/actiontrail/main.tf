/**
 * Alibaba Cloud — actiontrail
 *
 * Provisions Actiontrail via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "actiontrail"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
