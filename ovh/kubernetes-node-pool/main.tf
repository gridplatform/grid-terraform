/**
 * OVHcloud — kubernetes-node-pool
 *
 * Provisions Kubernetes Node Pool via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "kubernetes-node-pool"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
