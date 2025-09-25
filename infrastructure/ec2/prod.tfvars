name = "heathprodec2"
ami  = ""
create   = true
key_name = "prod-keypair"

instance_tags = {
  Environment = "prod"
  Owner       = "YourName"
}
