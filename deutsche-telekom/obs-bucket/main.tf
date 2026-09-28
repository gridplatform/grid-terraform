/**
 * Deutsche Telekom (Open Telekom Cloud) — obs-bucket
 *
 * Provisions Obs Bucket via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "obs-bucket"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
