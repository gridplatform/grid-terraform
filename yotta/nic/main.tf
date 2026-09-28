/**
 * Yotta — nic
 *
 * Provisions Nic via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "nic"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
