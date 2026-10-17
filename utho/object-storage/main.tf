/**
 * Utho Cloud — object-storage
 *
 * Provisions Object Storage via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "object-storage"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
