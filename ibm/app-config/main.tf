/**
 * IBM Cloud — app-config
 *
 * Provisions App Config via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "app-config"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
