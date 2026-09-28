/**
 * IBM Cloud — kserve
 *
 * Provisions Kserve via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "kserve"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
