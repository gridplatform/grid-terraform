/**
 * Alibaba Cloud — nlp
 *
 * Provisions Nlp via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "nlp"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
