/**
 * CtrlS — backup
 *
 * Provisions Backup via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "backup"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
