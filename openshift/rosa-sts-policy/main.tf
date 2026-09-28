/**
 * Red Hat OpenShift — rosa-sts-policy
 *
 * Provisions Rosa Sts Policy via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "rosa-sts-policy"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
