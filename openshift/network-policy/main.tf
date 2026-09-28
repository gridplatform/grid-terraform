/**
 * Red Hat OpenShift — network-policy
 *
 * Provisions Network Policy via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "network-policy"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
