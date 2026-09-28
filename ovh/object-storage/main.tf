/**
 * OVHcloud — object-storage
 *
 * Provisions Object Storage via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "object-storage"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
