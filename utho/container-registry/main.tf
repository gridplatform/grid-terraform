/**
 * Utho Cloud — container-registry
 *
 * Provisions Container Registry via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "container-registry"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
