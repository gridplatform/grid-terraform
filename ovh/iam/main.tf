/**
 * OVHcloud — iam
 *
 * Provisions Iam via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "iam"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
