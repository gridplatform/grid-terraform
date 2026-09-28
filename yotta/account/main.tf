/**
 * Yotta — account
 *
 * Provisions Account via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "account"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
