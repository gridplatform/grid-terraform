/**
 * IBM Cloud — block-storage
 *
 * Provisions Block Storage via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "block-storage"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
