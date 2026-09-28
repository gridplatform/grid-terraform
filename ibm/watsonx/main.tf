/**
 * IBM Cloud — watsonx
 *
 * Provisions Watsonx via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "watsonx"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
