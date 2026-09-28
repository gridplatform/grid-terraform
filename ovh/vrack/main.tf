/**
 * OVHcloud — vrack
 *
 * Provisions Vrack via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "vrack"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
