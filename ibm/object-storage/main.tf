/**
 * IBM Cloud — object-storage
 *
 * Provisions Object Storage via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "object-storage"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
