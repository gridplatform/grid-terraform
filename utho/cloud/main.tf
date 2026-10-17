/**
 * Utho Cloud — cloud
 *
 * Provisions Cloud via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "cloud"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
