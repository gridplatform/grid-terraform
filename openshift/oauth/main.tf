/**
 * Red Hat OpenShift — oauth
 *
 * Provisions Oauth via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "oauth"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
