/**
 * Utho Cloud — kubernetes-node-pool
 *
 * Provisions Kubernetes Node Pool via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "kubernetes-node-pool"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
