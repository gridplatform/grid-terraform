/**
 * Huawei Cloud — as-autoscaling
 *
 * Provisions As Autoscaling via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "as-autoscaling"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
