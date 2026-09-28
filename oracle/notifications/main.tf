/**
 * Oracle Cloud Infrastructure (OCI) — notifications
 *
 * Provisions Notifications via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "notifications"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
