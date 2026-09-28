/**
 * IBM Cloud — databases-mysql
 *
 * Provisions Databases Mysql via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "databases-mysql"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
