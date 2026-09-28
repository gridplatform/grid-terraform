/**
 * OVHcloud — kubernetes
 *
 * Provisions Kubernetes via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "kubernetes"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
