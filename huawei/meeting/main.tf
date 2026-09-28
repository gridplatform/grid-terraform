/**
 * Huawei Cloud — meeting
 *
 * Provisions Meeting via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "meeting"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
