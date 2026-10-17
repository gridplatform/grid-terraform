/**
 * Utho Cloud — iam-user
 *
 * Provisions Iam User via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "iam-user"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
