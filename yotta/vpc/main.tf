/**
 * Yotta — vpc
 *
 * Provisions Vpc via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "vpc"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
