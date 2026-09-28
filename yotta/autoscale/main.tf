/**
 * Yotta — autoscale
 *
 * Provisions Autoscale via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "autoscale"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
