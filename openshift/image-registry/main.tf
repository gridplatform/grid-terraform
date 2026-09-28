/**
 * Red Hat OpenShift — image-registry
 *
 * Provisions Image Registry via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "image-registry"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
