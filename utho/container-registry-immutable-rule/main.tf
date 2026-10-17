/**
 * Utho Cloud — container-registry-immutable-rule
 *
 * Provisions Container Registry Immutable Rule via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "container-registry-immutable-rule"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
