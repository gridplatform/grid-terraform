/**
 * OVHcloud — instance-snapshot
 *
 * Provisions Instance Snapshot via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "instance-snapshot"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
