/**
 * CtrlS — vllm
 *
 * Provisions Vllm via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "vllm"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
