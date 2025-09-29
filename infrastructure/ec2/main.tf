module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.6.0"

  name                   = var.name
  instance_type          = var.instance_type
  ami                    = var.ami
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  tags                   = local.final_tags

  # ✅ Use static map, not dynamic block
  cpu_options = var.cpu_core_count != null && var.cpu_threads_per_core != null ? {
    core_count       = var.cpu_core_count
    threads_per_core = var.cpu_threads_per_core
  } : null
}
