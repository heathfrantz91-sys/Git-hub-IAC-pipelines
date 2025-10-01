name     = "heathprodec2"
ami      = ""
create   = true
key_name = "prod-keypair"
environment = "prod"
instance_type = "t3.micro"

instance_tags = {
  Environment = "prod"
  Owner       = "YourName"
}
