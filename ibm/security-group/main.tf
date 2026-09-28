/**
 * IBM Cloud — security-group
 *
 * Provisions Security Group via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "security-group"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
