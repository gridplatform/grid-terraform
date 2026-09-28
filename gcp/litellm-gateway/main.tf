/**
 * Google Cloud — litellm-gateway
 *
 * Provisions Litellm Gateway via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "litellm-gateway"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
