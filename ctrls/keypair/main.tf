/**
 * CtrlS — keypair
 *
 * Provisions Keypair via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "keypair"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
