/**
 * Utho Cloud — cloud-snapshot
 *
 * Provisions Cloud Snapshot via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "cloud-snapshot"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
