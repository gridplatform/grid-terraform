/**
 * Utho Cloud — alert
 *
 * Provisions Alert via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "alert"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
