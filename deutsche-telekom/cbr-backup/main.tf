/**
 * Deutsche Telekom (Open Telekom Cloud) — cbr-backup
 *
 * Provisions Cbr Backup via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "cbr-backup"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
