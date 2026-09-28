/**
 * IBM Cloud — databases-postgresql
 *
 * Provisions Databases Postgresql via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "databases-postgresql"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
