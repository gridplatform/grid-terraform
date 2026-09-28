/**
 * Yotta — snapshot
 *
 * Provisions Snapshot via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "snapshot"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
