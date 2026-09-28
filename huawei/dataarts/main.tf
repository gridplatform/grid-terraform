/**
 * Huawei Cloud — dataarts
 *
 * Provisions Dataarts via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dataarts"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
