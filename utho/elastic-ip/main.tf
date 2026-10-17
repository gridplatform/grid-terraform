/**
 * Utho Cloud — elastic-ip
 *
 * Provisions Elastic Ip via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "elastic-ip"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
