output "ec2_instance_ids" {
  description = "IDs of the created EC2 instances"
  value       = module.ec2_instance.*.id
}

output "ec2_instance_public_ips" {
  description = "Public IPs of the created EC2 instances"
  value       = module.ec2_instance.*.public_ip
}
