/**
 * Utho Cloud — autoscaling-schedule
 *
 * Provisions Autoscaling Schedule via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "autoscaling-schedule"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
