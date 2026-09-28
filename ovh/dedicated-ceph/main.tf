/**
 * OVHcloud — dedicated-ceph
 *
 * Provisions Dedicated Ceph via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "dedicated-ceph"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
