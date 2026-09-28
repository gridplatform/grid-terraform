/**
 * IBM Cloud — watson-assistant
 *
 * Provisions Watson Assistant via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "watson-assistant"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
