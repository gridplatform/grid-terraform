/**
 * IBM Cloud — public-gateway
 *
 * Provisions Public Gateway via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "public-gateway"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
