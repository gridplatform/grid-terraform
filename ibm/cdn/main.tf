/**
 * IBM Cloud — cdn
 *
 * Provisions Cdn via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "cdn"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
