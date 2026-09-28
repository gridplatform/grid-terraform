/**
 * OVHcloud — cloud-project-kube-iprestrictions
 *
 * Provisions Cloud Project Kube Iprestrictions via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "cloud-project-kube-iprestrictions"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
