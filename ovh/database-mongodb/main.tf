/**
 * OVHcloud — database-mongodb
 *
 * Provisions Database Mongodb via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "database-mongodb"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
