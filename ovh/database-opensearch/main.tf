/**
 * OVHcloud — database-opensearch
 *
 * Provisions Database Opensearch via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "database-opensearch"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
