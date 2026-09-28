/**
 * Google Cloud — identity-aware-proxy
 *
 * Provisions Identity Aware Proxy via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "identity-aware-proxy"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
