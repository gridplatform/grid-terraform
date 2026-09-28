/**
 * Yotta — instance-group
 *
 * Provisions Instance Group via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "instance-group"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
