/**
 * OVHcloud — database-postgresql
 *
 * Provisions Database Postgresql via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "database-postgresql"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
