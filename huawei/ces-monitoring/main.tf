/**
 * Huawei Cloud — ces-monitoring
 *
 * Provisions Ces Monitoring via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "ces-monitoring"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
