/**
 * Utho Cloud — project
 *
 * Provisions Project via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "project"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
