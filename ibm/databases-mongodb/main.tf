/**
 * IBM Cloud — databases-mongodb
 *
 * Provisions Databases Mongodb via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "databases-mongodb"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
