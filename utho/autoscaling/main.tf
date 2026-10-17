/**
 * Utho Cloud — autoscaling
 *
 * Provisions Autoscaling via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "autoscaling"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
