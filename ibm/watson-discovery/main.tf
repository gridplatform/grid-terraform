/**
 * IBM Cloud — watson-discovery
 *
 * Provisions Watson Discovery via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "watson-discovery"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
