/**
 * Utho Cloud — cloud-resize
 *
 * Provisions Cloud Resize via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "cloud-resize"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
