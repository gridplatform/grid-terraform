/**
 * IBM Cloud — file-storage
 *
 * Provisions File Storage via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "file-storage"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
