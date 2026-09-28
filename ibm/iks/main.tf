/**
 * IBM Cloud — iks
 *
 * Provisions Iks via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "iks"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
