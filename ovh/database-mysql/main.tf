/**
 * OVHcloud — database-mysql
 *
 * Provisions Database Mysql via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "database-mysql"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
