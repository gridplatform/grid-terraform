/**
 * Utho Cloud — ebs-attachment
 *
 * Provisions Ebs Attachment via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "ebs-attachment"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
