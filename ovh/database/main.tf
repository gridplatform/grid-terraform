/**
 * OVHcloud — database
 *
 * Provisions Database via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "database"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
