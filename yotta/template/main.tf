/**
 * Yotta — template
 *
 * Provisions Template via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "template"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
