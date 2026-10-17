/**
 * Utho Cloud — dns-record
 *
 * Provisions Dns Record via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "dns-record"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
