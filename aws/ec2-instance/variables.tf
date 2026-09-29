/**
 * EC2 instance module. Equivalent to gcp/compute-engine-instance.
 * Reference: modules-clone/terraform-aws-ec2-instance
 */

variable "name" {
  type        = string
  description = "Name for the instance (used in Name tag)"
}

variable "ami" {
  type        = string
  default     = null
  nullable    = true
  description = "AMI ID. Null/empty uses the latest Amazon Linux 2023 (x86_64)."
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance type"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID (e.g. from aws/vpc)"
}

variable "associate_public_ip_address" {
  type        = bool
  default     = false
  description = "Associate public IP"
}

variable "key_name" {
  type        = string
  default     = null
  nullable    = true
  description = "Key pair name for SSH"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  default     = []
  description = "Security group IDs"
}

variable "root_volume_size" {
  type        = number
  default     = 8
  description = "Root EBS volume size (GiB)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags for the instance"
}
