/**
 * OVHcloud — domain-zone
 *
 * Provisions Domain Zone via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "domain-zone"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
