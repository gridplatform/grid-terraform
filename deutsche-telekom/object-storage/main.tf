/**
 * Deutsche Telekom (Open Telekom Cloud) — object-storage
 *
 * Provisions Object Storage via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "object-storage"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
