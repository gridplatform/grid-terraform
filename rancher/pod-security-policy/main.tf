/**
 * Rancher — pod-security-policy
 *
 * Provisions Pod Security Policy via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "pod-security-policy"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
