/**
 * OVHcloud — email-pro
 *
 * Provisions Email Pro via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "email-pro"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
