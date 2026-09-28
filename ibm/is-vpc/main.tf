/**
 * IBM Cloud — is-vpc
 *
 * Provisions Is Vpc via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "is-vpc"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
