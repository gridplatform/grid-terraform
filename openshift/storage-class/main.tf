/**
 * Red Hat OpenShift — storage-class
 *
 * Provisions Storage Class via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "storage-class"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
