/**
 * Utho Cloud — cloud-storage
 *
 * Provisions Cloud Storage via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "cloud-storage"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
