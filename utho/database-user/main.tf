/**
 * Utho Cloud — database-user
 *
 * Provisions Database User via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "database-user"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
