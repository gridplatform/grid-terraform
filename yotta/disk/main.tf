/**
 * Yotta — disk
 *
 * Provisions Disk via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "disk"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
