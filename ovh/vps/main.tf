/**
 * OVHcloud — vps
 *
 * Provisions Vps via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "vps"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
