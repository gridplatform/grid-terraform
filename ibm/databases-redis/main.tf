/**
 * IBM Cloud — databases-redis
 *
 * Provisions Databases Redis via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "databases-redis"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
