/**
 * IBM Cloud — toolchain
 *
 * Provisions Toolchain via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "toolchain"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
