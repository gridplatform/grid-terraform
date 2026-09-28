/**
 * IBM Cloud — cloudant
 *
 * Provisions Cloudant via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "cloudant"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
