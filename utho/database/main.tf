/**
 * Utho Cloud — database
 *
 * Provisions Database via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "database"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
