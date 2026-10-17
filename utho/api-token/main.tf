/**
 * Utho Cloud — api-token
 *
 * Provisions Api Token via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "api-token"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
