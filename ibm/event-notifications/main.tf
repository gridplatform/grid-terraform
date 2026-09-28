/**
 * IBM Cloud — event-notifications
 *
 * Provisions Event Notifications via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "event-notifications"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
