/**
 * OVHcloud — pci-project
 *
 * Provisions Pci Project via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "pci-project"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
