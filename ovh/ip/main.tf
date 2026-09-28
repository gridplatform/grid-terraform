/**
 * OVHcloud — ip
 *
 * Provisions Ip via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "ip"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
