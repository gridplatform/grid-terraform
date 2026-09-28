/**
 * IBM Cloud — security-advisor
 *
 * Provisions Security Advisor via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "security-advisor"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
