/**
 * Utho Cloud — ssl-certificate
 *
 * Provisions Ssl Certificate via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "ssl-certificate"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
