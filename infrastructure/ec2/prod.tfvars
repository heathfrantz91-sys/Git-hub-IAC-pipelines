name     = "heathprodec2"
ami      = ""
create   = true
key_name = "prod-keypair"

environment = "prod"

instance_tags = {
  Environment = "prod"
  Owner       = "YourName"
}
