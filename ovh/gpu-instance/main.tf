/**
 * OVHcloud — gpu-instance
 *
 * Provisions Gpu Instance via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "gpu-instance"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
