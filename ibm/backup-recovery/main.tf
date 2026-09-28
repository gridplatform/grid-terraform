/**
 * IBM Cloud — backup-recovery
 *
 * Provisions Backup Recovery via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "backup-recovery"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
