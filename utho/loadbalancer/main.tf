/**
 * Utho Cloud — loadbalancer
 *
 * Provisions Loadbalancer via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "loadbalancer"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
