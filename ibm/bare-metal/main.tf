/**
 * IBM Cloud — bare-metal
 *
 * Provisions Bare Metal via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "bare-metal"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
