/**
 * Utho Cloud — database-pool
 *
 * Provisions Database Pool via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "database-pool"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
