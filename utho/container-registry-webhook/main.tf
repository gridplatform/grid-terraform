/**
 * Utho Cloud — container-registry-webhook
 *
 * Provisions Container Registry Webhook via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "container-registry-webhook"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
