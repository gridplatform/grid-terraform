/**
 * Yotta — volume
 *
 * Provisions Volume via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "volume"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
