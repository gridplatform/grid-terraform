/**
 * Yotta — project
 *
 * Provisions Project via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "project"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
