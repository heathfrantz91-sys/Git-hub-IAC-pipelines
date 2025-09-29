module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.6.0"

  name                = var.name
  instance_type       = var.instance_type
  key_name            = var.key_name
  subnet_id           = var.subnet_id
  ami                 = var.ami
  vpc_security_group_ids = var.security_group_ids
  tags                = local.final_tags

  dynamic "cpu_options" {
    for_each = var.cpu_core_count != null && var.cpu_threads_per_core != null ? [1] : []
    content {
      core_count       = var.cpu_core_count
      threads_per_core = var.cpu_threads_per_core
    }
  }
}
