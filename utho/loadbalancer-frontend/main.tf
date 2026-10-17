/**
 * Utho Cloud — loadbalancer-frontend
 *
 * Provisions Loadbalancer Frontend via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "loadbalancer-frontend"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
