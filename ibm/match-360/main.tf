/**
 * IBM Cloud — match-360
 *
 * Provisions Match 360 via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "match-360"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
