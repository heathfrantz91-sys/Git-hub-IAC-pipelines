module "ec2_instance" {
  source = "git::https://github.com/heathfrantz91-sys/Modules.git//aws/ec2?ref=main"

  name                = var.name
  instance_type       = var.instance_type
  key_name            = var.key_name
  subnet_id           = var.subnet_id
  security_group_ids  = var.security_group_ids
  create              = true
}
