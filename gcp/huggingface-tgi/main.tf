/**
 * Google Cloud — huggingface-tgi
 *
 * Provisions Huggingface Tgi via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "huggingface-tgi"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
