/**
 * Utho Cloud — cloud-power
 *
 * Provisions Cloud Power via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "cloud-power"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
