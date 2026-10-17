/**
 * Utho Cloud — cloud-vpc
 *
 * Provisions Cloud Vpc via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "cloud-vpc"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
