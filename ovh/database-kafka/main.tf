/**
 * OVHcloud — database-kafka
 *
 * Provisions Database Kafka via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "database-kafka"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
