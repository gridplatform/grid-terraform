/**
 * Utho Cloud — object-storage-permission
 *
 * Provisions Object Storage Permission via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "object-storage-permission"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
