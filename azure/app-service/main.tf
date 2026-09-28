/**
 * Microsoft Azure — app-service
 *
 * Provisions App Service via the terraform Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "app-service"
    tf_provider = "terraform"
    note        = "module placeholder"
  }
}
