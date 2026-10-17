/**
 * Utho Cloud — route
 *
 * Provisions Route via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "route"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
