/**
 * EC2 instance. Omit ami → latest Amazon Linux 2023.
 */

data "aws_ami" "amazon_linux" {
  count = var.ami == null || var.ami == "" ? 1 : 0

  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

locals {
  # Prefer explicit ami; otherwise the data source above (count = 1).
  ami_id = var.ami != null && var.ami != "" ? var.ami : data.aws_ami.amazon_linux[0].id
}

resource "aws_instance" "this" {
  ami                         = local.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name
  vpc_security_group_ids      = length(var.vpc_security_group_ids) > 0 ? var.vpc_security_group_ids : null

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
    encrypted   = true
  }

  tags = merge(var.tags, { "Name" = var.name })
}
