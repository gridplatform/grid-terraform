/**
 * OVHcloud — dns
 *
 * Provisions Dns via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "dns"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
