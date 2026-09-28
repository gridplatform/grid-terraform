/**
 * OVHcloud — database-user
 *
 * Provisions Database User via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "database-user"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
