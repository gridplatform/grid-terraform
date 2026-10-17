/**
 * Utho Cloud — loadbalancer-settings
 *
 * Provisions Loadbalancer Settings via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "loadbalancer-settings"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
