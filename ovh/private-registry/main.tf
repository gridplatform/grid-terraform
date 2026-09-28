/**
 * OVHcloud — private-registry
 *
 * Provisions Private Registry via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "private-registry"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
