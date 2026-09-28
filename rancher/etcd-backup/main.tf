/**
 * Rancher — etcd-backup
 *
 * Provisions Etcd Backup via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "etcd-backup"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
