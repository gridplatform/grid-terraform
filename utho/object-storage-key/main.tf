/**
 * Utho Cloud — object-storage-key
 *
 * Provisions Object Storage Key via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "object-storage-key"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
