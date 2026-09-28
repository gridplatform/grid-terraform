/**
 * OVHcloud — user
 *
 * Provisions User via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "user"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
