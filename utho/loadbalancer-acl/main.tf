/**
 * Utho Cloud — loadbalancer-acl
 *
 * Provisions Loadbalancer Acl via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "loadbalancer-acl"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
