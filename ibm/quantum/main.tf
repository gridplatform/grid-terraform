/**
 * IBM Cloud — quantum
 *
 * Provisions Quantum via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "quantum"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
