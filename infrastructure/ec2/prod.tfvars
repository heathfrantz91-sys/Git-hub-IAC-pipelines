create         = true
instance_name  = "my-0805-ec2-prod"
instance_type  = "t3.medium"
ami_id         = "ami-0c123456789example"
key_name       = "prod-keypair"
subnet_id      = "subnet-0abc1234example"
security_group_ids = ["sg-0123456789example"]

instance_tags = {
  Name        = "my-0805-ec2-prod"
  Environment = "prod"
  Owner       = "YourName"
}
