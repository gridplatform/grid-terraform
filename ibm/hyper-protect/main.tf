/**
 * IBM Cloud — hyper-protect
 *
 * Provisions Hyper Protect via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "hyper-protect"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
