/**
 * IBM Cloud — activity-tracker
 *
 * Provisions Activity Tracker via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "activity-tracker"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
