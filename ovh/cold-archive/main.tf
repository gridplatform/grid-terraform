/**
 * OVHcloud — cold-archive
 *
 * Provisions Cold Archive via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "cold-archive"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
