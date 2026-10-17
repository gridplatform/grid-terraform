/**
 * Utho Cloud — database-db
 *
 * Provisions Database Db via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "database-db"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
