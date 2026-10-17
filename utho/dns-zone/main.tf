/**
 * Utho Cloud — dns-zone
 *
 * Provisions Dns Zone via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "dns-zone"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
