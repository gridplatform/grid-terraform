/**
 * CtrlS — object-storage
 *
 * Provisions Object Storage via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "object-storage"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
