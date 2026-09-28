/**
 * Yotta — affinity-group
 *
 * Provisions Affinity Group via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "affinity-group"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
