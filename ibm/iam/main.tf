/**
 * IBM Cloud — iam
 *
 * Provisions Iam via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "iam"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
