/**
 * Utho Cloud — autoscaling-policy
 *
 * Provisions Autoscaling Policy via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "autoscaling-policy"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
