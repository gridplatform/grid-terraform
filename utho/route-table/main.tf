/**
 * Utho Cloud — route-table
 *
 * Provisions Route Table via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "route-table"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
