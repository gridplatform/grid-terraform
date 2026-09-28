/**
 * IBM Cloud — key-protect
 *
 * Provisions Key Protect via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "key-protect"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
