module "ec2_instance" {
  source = "git::https://github.com/heathfrantz91-sys/Modules.git//aws/ec2?ref=main"

  name          = local.instance_name
  instance_type = var.instance_type
  ami           = var.ami_id
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  instance_tags = local.final_tags
  create        = true
}
