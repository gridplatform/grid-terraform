/**
 * Red Hat OpenShift — route
 *
 * Provisions Route via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "route"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
