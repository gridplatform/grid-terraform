/**
 * Utho Cloud — cloud-ebs
 *
 * Provisions Cloud Ebs via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "cloud-ebs"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
