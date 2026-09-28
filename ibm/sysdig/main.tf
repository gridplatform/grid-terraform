/**
 * IBM Cloud — sysdig
 *
 * Provisions Sysdig via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "sysdig"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
