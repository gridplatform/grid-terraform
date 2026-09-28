# Root provider requirements for the Grid module bank.
#
# Compose modules from this repo in a workspace root; align provider versions here
# so one lockfile applies. Individual modules may declare their own required_providers.

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    # Hyperscalers
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.50"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.100"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 2.47"
    }
    google = {
      source  = "hashicorp/google"
      version = ">= 5.20"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.20"
    }

    # Additional clouds
    oci = {
      source  = "oracle/oci"
      version = ">= 5.0"
    }
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.60"
    }
    alicloud = {
      source  = "aliyun/alicloud"
      version = ">= 1.210"
    }
    tencentcloud = {
      source  = "tencentcloudstack/tencentcloud"
      version = ">= 1.80"
    }
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = ">= 1.60"
    }
    ovh = {
      source  = "ovh/ovh"
      version = ">= 0.40"
    }
    opentelekomcloud = {
      source  = "opentelekomcloud/opentelekomcloud"
      version = ">= 1.35"
    }

    # Regional and HCI
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = ">= 1.53"
    }
    cloudstack = {
      source  = "cloudstack/cloudstack"
      version = ">= 0.5"
    }
    nutanix = {
      source  = "nutanix/nutanix"
      version = ">= 1.9"
    }
    vsphere = {
      source  = "hashicorp/vsphere"
      version = ">= 2.6"
    }

    # Kubernetes platforms
    rancher2 = {
      source  = "rancher/rancher2"
      version = ">= 4.0"
    }
    rhcs = {
      source  = "terraform-redhat/rhcs"
      version = ">= 1.5"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.25"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.12"
    }

    # Optional SaaS and utilities
    rediscloud = {
      source  = "RedisLabs/rediscloud"
      version = ">= 1.0"
    }
    confluent = {
      source  = "confluentinc/confluent"
      version = ">= 1.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = ">= 2.4"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2"
    }
  }
}
