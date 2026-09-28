/**
 * Red Hat OpenShift — identity-provider
 *
 * Provisions Identity Provider via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "identity-provider"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
