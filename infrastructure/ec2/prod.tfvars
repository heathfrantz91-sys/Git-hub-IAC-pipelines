name           = "heathprodec2"
ami            = ""
create         = true
key_name       = "prod-keypair"
environment    = "prod"
instance_type  = "t3.micro"
subnet_id      = "subnet-0abc123456789def0"

instance_tags = {
  Environment = "prod"
  Owner       = "YourName"
}
