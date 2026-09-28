/**
 * IBM Cloud — logging
 *
 * Provisions Logging via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "logging"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
