/**
 * IBM Cloud — databases
 *
 * Provisions Databases via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "databases"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
