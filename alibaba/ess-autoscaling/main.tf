/**
 * Alibaba Cloud — ess-autoscaling
 *
 * Provisions Ess Autoscaling via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ess-autoscaling"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
