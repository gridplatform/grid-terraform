/**
 * OVHcloud — compute-instance
 *
 * Provisions Compute Instance via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "compute-instance"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
