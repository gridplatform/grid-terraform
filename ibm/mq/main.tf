/**
 * IBM Cloud — mq
 *
 * Provisions Mq via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "mq"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
