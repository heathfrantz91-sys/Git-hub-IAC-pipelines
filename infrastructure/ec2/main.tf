provider "aws" {
  region = "us-east-1"
}

#############################
# 🔧 Locals
#############################

locals {
  environment    = "dev"  # 👈 Change via tfvars if needed
  instance_name  = "my-${formatdate("MMdd", timestamp())}-ec2-${local.environment}"

  base_tags = {
    Owner = "YourName"
  }

  env_tags = {
    Environment = local.environment
  }

  final_tags = merge(local.base_tags, local.env_tags)
}

#############################
# 🔍 Dynamic Data Sources
#############################

# Get latest Ubuntu AMI if not provided
data "aws_ami" "default_ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# Get subnet by Environment tag
data "aws_subnet" "selected" {
  filter {
    name   = "tag:Environment"
    values = [local.environment]
  }
}

# Get security group by name
data "aws_security_group" "selected" {
  filter {
    name   = "group-name"
    values = ["${local.environment}-app-sg"]
  }
}

#############################
# 📦 EC2 Module
#############################

module "ec2_instance" {
  source = "git::https://github.com/heathfrantz91-sys/Modules"

  create             = var.create
  key_name           = var.key_name
  instance_type      = var.instance_type
  ami_id             = var.ami_id != "" ? var.ami_id : data.aws_ami.default_ubuntu.id
  instance_name      = local.instance_name
  subnet_id          = data.aws_subnet.selected.id
  security_group_ids = [data.aws_security_group.selected.id]
  instance_tags      = local.final_tags
}
