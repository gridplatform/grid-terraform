/**
 * IBM Cloud — event-streams
 *
 * Provisions Event Streams via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "event-streams"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
