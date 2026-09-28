/**
 * IBM Cloud — compute-instance
 *
 * Provisions Compute Instance via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "compute-instance"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
