/**
 * Rancher — persistent-volume-claim
 *
 * Provisions Persistent Volume Claim via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "persistent-volume-claim"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
