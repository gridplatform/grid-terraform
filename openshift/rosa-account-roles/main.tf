/**
 * Red Hat OpenShift — rosa-account-roles
 *
 * Provisions Rosa Account Roles via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "rosa-account-roles"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
