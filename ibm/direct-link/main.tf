/**
 * IBM Cloud — direct-link
 *
 * Provisions Direct Link via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "direct-link"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
