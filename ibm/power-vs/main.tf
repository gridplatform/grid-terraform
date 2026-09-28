/**
 * IBM Cloud — power-vs
 *
 * Provisions Power Vs via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "power-vs"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
