/**
 * Utho Cloud — project-member
 *
 * Provisions Project Member via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "project-member"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
