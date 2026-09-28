/**
 * Google Cloud — kuberay
 *
 * Provisions Kuberay via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "kuberay"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
