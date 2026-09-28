/**
 * IBM Cloud — roks
 *
 * Provisions Roks via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "roks"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
