/**
 * OVHcloud — hosting-web
 *
 * Provisions Hosting Web via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "hosting-web"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
