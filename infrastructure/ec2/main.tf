provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "git::https://github.com/heathfrantz91-sys/Modules"

  create                = var.create
  instance_name         = var.instance_name
  instance_type         = var.instance_type
  ami_id                = var.ami_id
  key_name              = var.key_name
  subnet_id             = var.subnet_id
  security_group_ids    = var.security_group_ids
  instance_tags         = var.instance_tags
}
