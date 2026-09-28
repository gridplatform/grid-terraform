/**
 * IBM Cloud — code-engine
 *
 * Provisions Code Engine via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "code-engine"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
