/**
 * Red Hat OpenShift — vllm
 *
 * Provisions Vllm via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "vllm"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
