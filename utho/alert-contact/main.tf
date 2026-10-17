/**
 * Utho Cloud — alert-contact
 *
 * Provisions Alert Contact via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "alert-contact"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
