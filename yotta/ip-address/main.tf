/**
 * Yotta — ip-address
 *
 * Provisions Ip Address via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "ip-address"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
