/**
 * Yotta — iso
 *
 * Provisions Iso via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "iso"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
