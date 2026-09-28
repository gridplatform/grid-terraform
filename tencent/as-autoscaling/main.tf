/**
 * Tencent Cloud — as-autoscaling
 *
 * Provisions As Autoscaling via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "as-autoscaling"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
