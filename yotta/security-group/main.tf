/**
 * Yotta — security-group
 *
 * Provisions Security Group via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "security-group"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
