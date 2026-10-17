/**
 * Utho Cloud — cloud-iso
 *
 * Provisions Cloud Iso via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "cloud-iso"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
