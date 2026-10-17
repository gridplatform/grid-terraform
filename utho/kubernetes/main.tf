/**
 * Utho Cloud — kubernetes
 *
 * Provisions Kubernetes via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "kubernetes"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
