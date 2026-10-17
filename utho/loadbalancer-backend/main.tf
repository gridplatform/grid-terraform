/**
 * Utho Cloud — loadbalancer-backend
 *
 * Provisions Loadbalancer Backend via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "loadbalancer-backend"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
