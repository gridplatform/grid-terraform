/**
 * OVHcloud — cloud-project
 *
 * Provisions Cloud Project via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "cloud-project"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
