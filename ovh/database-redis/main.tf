/**
 * OVHcloud — database-redis
 *
 * Provisions Database Redis via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "database-redis"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
